VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(63:0)
        SIGNAL B
        SIGNAL O(63:0)
        SIGNAL A(63:32)
        SIGNAL A(31:0)
        SIGNAL O(31:0)
        SIGNAL O(63:32)
        SIGNAL XLXN_9
        SIGNAL XLXN_11
        PORT Input A(63:0)
        PORT Input B
        PORT Output O(63:0)
        BEGIN BLOCKDEF xor_32_1
            TIMESTAMP 2026 1 25 5 14 13
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 xor_32_1
            PIN A(31:0) A(31:0)
            PIN B B
            PIN O(31:0) O(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 xor_32_1
            PIN A(31:0) A(63:32)
            PIN B B
            PIN O(31:0) O(63:32)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(63:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 A(63:0) R180 28
        BEGIN BRANCH B
            WIRE 640 1120 800 1120
            WIRE 800 880 800 1120
            WIRE 800 880 1408 880
            WIRE 1408 880 1552 880
            WIRE 1408 544 1552 544
            WIRE 1408 544 1408 880
        END BRANCH
        IOMARKER 640 1120 B R180 28
        BEGIN BRANCH O(63:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 O(63:0) R0 28
        BEGIN INSTANCE XLXI_3 1552 576 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1552 912 R0
        END INSTANCE
        BEGIN BRANCH A(63:32)
            WIRE 1280 816 1344 816
            WIRE 1344 816 1552 816
            BEGIN DISPLAY 1344 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 1312 480 1408 480
            WIRE 1408 480 1552 480
            BEGIN DISPLAY 1408 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 1936 480 2032 480
            WIRE 2032 480 2112 480
            BEGIN DISPLAY 2032 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(63:32)
            WIRE 1936 816 2080 816
            WIRE 2080 816 2192 816
            BEGIN DISPLAY 2080 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
