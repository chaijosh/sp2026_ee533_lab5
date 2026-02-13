VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(31:24)
        SIGNAL d(23:16)
        SIGNAL d(15:8)
        SIGNAL d(7:0)
        SIGNAL q(31:24)
        SIGNAL q(23:16)
        SIGNAL q(15:8)
        SIGNAL q(7:0)
        SIGNAL d(31:0)
        SIGNAL clk
        SIGNAL q(31:0)
        PORT Input d(31:0)
        PORT Input clk
        PORT Output q(31:0)
        BEGIN BLOCKDEF dff_8b
            TIMESTAMP 2026 1 22 2 46 34
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 dff_8b
            PIN clk clk
            PIN d(7:0) d(31:24)
            PIN q(7:0) q(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_2 dff_8b
            PIN clk clk
            PIN d(7:0) d(23:16)
            PIN q(7:0) q(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 dff_8b
            PIN clk clk
            PIN d(7:0) d(7:0)
            PIN q(7:0) q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 dff_8b
            PIN clk clk
            PIN d(7:0) d(15:8)
            PIN q(7:0) q(15:8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 816 208 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 816 416 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 816 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 816 624 R0
        END INSTANCE
        BEGIN BRANCH d(31:24)
            WIRE 736 176 816 176
        END BRANCH
        BEGIN BRANCH d(23:16)
            WIRE 736 384 816 384
        END BRANCH
        BEGIN BRANCH d(15:8)
            WIRE 736 592 800 592
            WIRE 800 592 816 592
        END BRANCH
        BEGIN BRANCH d(7:0)
            WIRE 736 832 816 832
        END BRANCH
        BEGIN BRANCH q(31:24)
            WIRE 1200 112 1264 112
        END BRANCH
        BEGIN BRANCH q(23:16)
            WIRE 1200 320 1264 320
        END BRANCH
        BEGIN BRANCH q(15:8)
            WIRE 1200 528 1264 528
        END BRANCH
        BEGIN BRANCH q(7:0)
            WIRE 1200 768 1264 768
        END BRANCH
        BEGIN BRANCH d(31:0)
            WIRE 288 144 384 144
        END BRANCH
        BEGIN BRANCH clk
            WIRE 288 224 384 224
            WIRE 384 224 720 224
            WIRE 720 224 720 320
            WIRE 720 320 816 320
            WIRE 720 320 720 528
            WIRE 720 528 816 528
            WIRE 720 528 720 768
            WIRE 720 768 816 768
            WIRE 720 112 816 112
            WIRE 720 112 720 224
        END BRANCH
        BEGIN BRANCH q(31:0)
            WIRE 1440 160 1504 160
        END BRANCH
        IOMARKER 288 144 d(31:0) R180 28
        IOMARKER 288 224 clk R180 28
        IOMARKER 1504 160 q(31:0) R0 28
    END SHEET
END SCHEMATIC
