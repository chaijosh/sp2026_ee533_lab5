#!/usr/bin/perl -w
use lib "/usr/local/netfpga/lib/Perl5";
use strict;

# ==============================================================================
# REGISTER MAP
# ==============================================================================
my $BASE                = 0x2001100;

# Software Registers
my $REG_IMEM_CTRL       = 0x2001100; 
my $REG_IMEM_WE         = 0x2001104; 
my $REG_IMEM_RW_ADDR    = 0x2001108; 
my $REG_IMEM_WDATA      = 0x200110c; 
my $REG_DMEM_CTRL       = 0x2001110; 
my $REG_DMEM_WE         = 0x2001114; 
my $REG_DMEM_RW_ADDR    = 0x2001118; 
my $REG_DMEM_WDATA_HI   = 0x200111c; 
my $REG_DMEM_WDATA_LO   = 0x2001120; 

# Hardware Registers
my $REG_IMEM_RDATA      = 0x2001124; 
my $REG_DMEM_RDATA_LO   = 0x2001128; 
my $REG_DMEM_RDATA_HI   = 0x200112c; 
my $REG_PC_SHADOW       = 0x2001130; 

# ==============================================================================
# HELPER FUNCTIONS
# ==============================================================================

sub silent_regwrite {
    my ($addr, $value) = @_;
    my $cmd = sprintf("regwrite 0x%08x 0x%08x 2>&1", $addr, $value);
    `$cmd`;
}

sub regread {
    my ($addr) = @_;
    my $cmd = sprintf("regread 0x%08x", $addr);
    my @out = `$cmd`;
    if (defined $out[0] && $out[0] =~ m/:\s+(0x[0-9a-f]+)/i) {
        return $1;
    }
    return "0x00000000";
}

# ==============================================================================
# STATE CONTROL (Active Low Reset)
# ==============================================================================

sub cpu_reset { silent_regwrite($REG_IMEM_CTRL, 0x1); } # Reset=0 (Active)
sub cpu_run_state { silent_regwrite($REG_IMEM_CTRL, 0x2); silent_regwrite($REG_DMEM_CTRL, 0x0); } # Reset=1 (Run)
sub cpu_freeze { silent_regwrite($REG_IMEM_CTRL, 0x3); } # Reset=1, Debug=1

# ==============================================================================
# MEMORY ACCESS
# ==============================================================================

sub write_imem {
    my ($addr, $hex_instr) = @_;
    cpu_reset();
    silent_regwrite($REG_IMEM_RW_ADDR, $addr);
    silent_regwrite($REG_IMEM_WDATA, hex($hex_instr));
    silent_regwrite($REG_IMEM_WE, 1); silent_regwrite($REG_IMEM_WE, 0);
    printf("  IMEM[0x%02x] <= %s\n", $addr, $hex_instr);
}

sub read_imem {
    my ($addr) = @_;
    cpu_freeze();
    silent_regwrite($REG_IMEM_RW_ADDR, $addr);
    return regread($REG_IMEM_RDATA);
}

sub write_dmem {
    my ($addr, $val64_hex) = @_;
    cpu_reset();
    silent_regwrite($REG_DMEM_CTRL, 0x1);
    my $clean = $val64_hex; $clean =~ s/^0x//i; $clean = sprintf("%016s", $clean); 
    my $hi = hex(substr($clean, 0, 8)); my $lo = hex(substr($clean, 8, 8));
    silent_regwrite($REG_DMEM_RW_ADDR, $addr);
    silent_regwrite($REG_DMEM_WDATA_HI, $hi);
    silent_regwrite($REG_DMEM_WDATA_LO, $lo);
    silent_regwrite($REG_DMEM_WE, 1); silent_regwrite($REG_DMEM_WE, 0);
    printf("  DMEM[0x%02x] <= %s\n", $addr, $val64_hex);
}

sub read_dmem {
    my ($addr) = @_;
    cpu_freeze();
    silent_regwrite($REG_DMEM_CTRL, 0x1);
    silent_regwrite($REG_DMEM_RW_ADDR, $addr);
    my $hi = regread($REG_DMEM_RDATA_HI);
    my $lo = regread($REG_DMEM_RDATA_LO);
    $lo =~ s/^0x//i;
    return $hi . $lo;
}

# ==============================================================================
# CLI EXECUTION
# ==============================================================================

my $cmd = $ARGV[0];

if (!defined $cmd) {
    print "Usage: ./cpu_control.pl <command> [args]\n";
    print "  load                 : Load Program & Data (Resets CPU)\n";
    print "  run                  : Run CPU (Reset=1)\n";
    print "  status               : Freeze & Dump State\n";
    print "  writereg <addr> <val>: Write ANY register\n";
    print "  readreg <addr>       : Read ANY register\n";
    print "  writeins/readins     : IMEM Access\n";
    print "  writedata/readdata   : DMEM Access\n";
    exit;
}

if ($cmd eq "load") {
    print "--- RESETTING (0) & LOADING ---\n";
    cpu_reset(); 
    my @prog = (
        "0x00000000", "0x00000000", "0x00000000", "0x00000000", "0x00000000",
        "0x0C001000", "0x0C001800", "0x00000000", "0x00000000", "0x00000000",
        "0x10430000", "0x0C400800", "0x00000000", "0x00000000"
    );
    for my $i (0 .. $#prog) { write_imem($i, $prog[$i]); }
    write_dmem(0, "0x0000000000000004");
    print "Load Complete.\n";

} elsif ($cmd eq "run") {
    print "--- RUNNING ---\n";
    cpu_run_state();

} elsif ($cmd eq "status") {
    print "--- STATUS ---\n";
    cpu_freeze();
    my $pc = regread($REG_PC_SHADOW);
    print "PC: $pc\n";
    print "IMEM (0-13):\n"; for my $i (0..13) { printf("  [%02d]: %s\n", $i, read_imem($i)); }
    print "DMEM (0-5):\n"; for my $i (0..5) { printf("  [%02d]: %s\n", $i, read_dmem($i)); }

} elsif ($cmd eq "writereg") {
    die "Usage: writereg <addr> <val>\n" unless defined $ARGV[2];
    # Allows generic write to any address
    silent_regwrite(hex($ARGV[1]), hex($ARGV[2]));
    printf("Wrote 0x%08x to Register 0x%08x\n", hex($ARGV[2]), hex($ARGV[1]));

} elsif ($cmd eq "readreg") {
    die "Usage: readreg <addr>\n" unless defined $ARGV[1];
    # Allows generic read from any address
    my $val = regread(hex($ARGV[1]));
    printf("Reg 0x%08x: %s\n", hex($ARGV[1]), $val);

} elsif ($cmd eq "writeins") {
    write_imem($ARGV[1], $ARGV[2]);

} elsif ($cmd eq "readins") {
    print read_imem($ARGV[1]) . "\n";

} elsif ($cmd eq "writedata") {
    write_dmem($ARGV[1], $ARGV[2]);

} elsif ($cmd eq "readdata") {
    print read_dmem($ARGV[1]) . "\n";
} else {
    print "Unknown command.\n";
}