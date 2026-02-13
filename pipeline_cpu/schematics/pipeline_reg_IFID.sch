VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IF_instruction(31:0)
        SIGNAL clk
        SIGNAL ID_instruction(31:0)
        PORT Input IF_instruction(31:0)
        PORT Input clk
        PORT Output ID_instruction(31:0)
        BEGIN BLOCKDEF dff_32b
            TIMESTAMP 2026 2 12 18 25 56
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 dff_32b
            PIN d(31:0) IF_instruction(31:0)
            PIN clk clk
            PIN q(31:0) ID_instruction(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 592 400 R0
        END INSTANCE
        BEGIN BRANCH IF_instruction(31:0)
            WIRE 560 304 592 304
        END BRANCH
        IOMARKER 560 304 IF_instruction(31:0) R180 28
        BEGIN BRANCH clk
            WIRE 560 368 592 368
        END BRANCH
        IOMARKER 560 368 clk R180 28
        BEGIN BRANCH ID_instruction(31:0)
            WIRE 976 304 1008 304
        END BRANCH
        IOMARKER 1008 304 ID_instruction(31:0) R0 28
    END SHEET
END SCHEMATIC
