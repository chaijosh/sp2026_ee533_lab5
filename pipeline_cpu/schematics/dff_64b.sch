VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(63:0)
        SIGNAL d(31:0)
        SIGNAL d(63:32)
        SIGNAL q(63:0)
        SIGNAL q(63:32)
        SIGNAL q(31:0)
        SIGNAL clk
        PORT Input d(63:0)
        PORT Output q(63:0)
        PORT Input clk
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
            PIN d(31:0) d(63:32)
            PIN clk clk
            PIN q(31:0) q(63:32)
        END BLOCK
        BEGIN BLOCK XLXI_2 dff_32b
            PIN d(31:0) d(31:0)
            PIN clk clk
            PIN q(31:0) q(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1168 608 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1168 816 R0
        END INSTANCE
        BEGIN BRANCH d(63:0)
            WIRE 848 512 944 512
            WIRE 944 512 944 720
        END BRANCH
        IOMARKER 848 512 d(63:0) R180 28
        BEGIN BRANCH d(31:0)
            WIRE 1040 720 1072 720
            WIRE 1072 720 1120 720
            WIRE 1120 720 1168 720
            BEGIN DISPLAY 1072 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 512 1040 512
        BUSTAP 944 720 1040 720
        BEGIN BRANCH d(63:32)
            WIRE 1040 512 1072 512
            WIRE 1072 512 1168 512
            BEGIN DISPLAY 1072 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:0)
            WIRE 1808 512 1840 512
            WIRE 1840 512 1904 512
            WIRE 1808 512 1808 720
        END BRANCH
        IOMARKER 1904 512 q(63:0) R0 28
        BUSTAP 1808 512 1712 512
        BUSTAP 1808 720 1712 720
        BEGIN BRANCH q(63:32)
            WIRE 1552 512 1648 512
            WIRE 1648 512 1712 512
            BEGIN DISPLAY 1648 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:0)
            WIRE 1552 720 1632 720
            WIRE 1632 720 1712 720
            BEGIN DISPLAY 1632 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 848 576 1152 576
            WIRE 1152 576 1168 576
            WIRE 1152 576 1152 784
            WIRE 1152 784 1168 784
        END BRANCH
        IOMARKER 848 576 clk R180 28
    END SHEET
END SCHEMATIC
