VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL pc(8:0)
        SIGNAL din(31:0)
        SIGNAL write_en
        SIGNAL clk
        SIGNAL instruction(31:0)
        SIGNAL XLXN_7
        PORT Input pc(8:0)
        PORT Input din(31:0)
        PORT Input write_en
        PORT Input clk
        PORT Output instruction(31:0)
        BEGIN BLOCKDEF instr_mem_32x512
            TIMESTAMP 2026 2 12 3 46 58
            RECTANGLE N 32 0 320 272 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 144 32 144 
            LINE N 0 240 32 240 
            BEGIN LINE W 320 48 352 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 instr_mem_32x512
            PIN addr(8:0) pc(8:0)
            PIN din(31:0) din(31:0)
            PIN we write_en
            PIN en XLXN_7
            PIN clk clk
            PIN dout(31:0) instruction(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 vcc
            PIN P XLXN_7
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1216 416 R0
        END INSTANCE
        BEGIN BRANCH pc(8:0)
            WIRE 1184 464 1216 464
        END BRANCH
        IOMARKER 1184 464 pc(8:0) R180 28
        BEGIN BRANCH din(31:0)
            WIRE 1184 496 1216 496
        END BRANCH
        IOMARKER 1184 496 din(31:0) R180 28
        BEGIN BRANCH write_en
            WIRE 1184 528 1216 528
        END BRANCH
        IOMARKER 1184 528 write_en R180 28
        BEGIN BRANCH clk
            WIRE 1184 656 1216 656
        END BRANCH
        IOMARKER 1184 656 clk R180 28
        BEGIN BRANCH instruction(31:0)
            WIRE 1568 464 1600 464
        END BRANCH
        IOMARKER 1600 464 instruction(31:0) R0 28
        INSTANCE XLXI_2 976 704 R180
        BEGIN BRANCH XLXN_7
            WIRE 912 560 912 704
            WIRE 912 560 1184 560
            WIRE 1184 560 1216 560
        END BRANCH
    END SHEET
END SCHEMATIC
