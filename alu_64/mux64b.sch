VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(63:0)
        SIGNAL B(63:0)
        SIGNAL S
        SIGNAL O(63:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL O(31:0)
        SIGNAL XLXN_8
        SIGNAL A(63:32)
        SIGNAL B(63:32)
        SIGNAL O(63:32)
        PORT Input A(63:0)
        PORT Input B(63:0)
        PORT Input S
        PORT Output O(63:0)
        BEGIN BLOCKDEF mux32b
            TIMESTAMP 2026 1 25 5 22 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux32b
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN S S
            PIN O(31:0) O(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux32b
            PIN A(31:0) A(63:32)
            PIN B(31:0) B(63:32)
            PIN S S
            PIN O(31:0) O(63:32)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(63:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 A(63:0) R180 28
        BEGIN BRANCH B(63:0)
            WIRE 640 1120 800 1120
        END BRANCH
        IOMARKER 640 1120 B(63:0) R180 28
        BEGIN BRANCH S
            WIRE 640 1600 800 1600
            WIRE 800 1600 1104 1600
            WIRE 1088 480 1088 1040
            WIRE 1088 1040 1104 1040
            WIRE 1104 1040 1104 1600
            WIRE 1088 480 1264 480
            WIRE 1264 480 1472 480
            WIRE 1104 1024 1424 1024
            WIRE 1104 1024 1104 1040
        END BRANCH
        IOMARKER 640 1600 S R180 28
        BEGIN BRANCH O(63:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 O(63:0) R0 28
        BEGIN INSTANCE XLXI_1 1472 512 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1424 1056 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 1248 352 1344 352
            WIRE 1344 352 1472 352
            BEGIN DISPLAY 1344 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 1248 416 1296 416
            WIRE 1296 416 1472 416
            BEGIN DISPLAY 1296 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 1856 352 1904 352
            WIRE 1904 352 2080 352
            BEGIN DISPLAY 1904 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(63:32)
            WIRE 1232 896 1328 896
            WIRE 1328 896 1424 896
            BEGIN DISPLAY 1328 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(63:32)
            WIRE 1264 960 1328 960
            WIRE 1328 960 1424 960
            BEGIN DISPLAY 1328 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(63:32)
            WIRE 1808 896 1872 896
            WIRE 1872 896 1984 896
            BEGIN DISPLAY 1872 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
