VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL S
        SIGNAL O(31:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL A(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL B(7:0)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL B(31:24)
        SIGNAL A(31:24)
        SIGNAL O(31:24)
        SIGNAL O(23:16)
        SIGNAL O(15:8)
        SIGNAL O(7:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input S
        PORT Output O(31:0)
        BEGIN BLOCKDEF mux_8b
            TIMESTAMP 2026 1 25 5 14 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux_8b
            PIN B(7:0) B(7:0)
            PIN S S
            PIN A(7:0) A(7:0)
            PIN O(7:0) O(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux_8b
            PIN B(7:0) B(15:8)
            PIN S S
            PIN A(7:0) A(15:8)
            PIN O(7:0) O(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux_8b
            PIN B(7:0) B(23:16)
            PIN S S
            PIN A(7:0) A(23:16)
            PIN O(7:0) O(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux_8b
            PIN B(7:0) B(31:24)
            PIN S S
            PIN A(7:0) A(31:24)
            PIN O(7:0) O(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 A(31:0) R180 28
        BEGIN BRANCH B(31:0)
            WIRE 640 1120 800 1120
        END BRANCH
        IOMARKER 640 1120 B(31:0) R180 28
        BEGIN BRANCH S
            WIRE 640 1600 800 1600
            WIRE 800 1296 800 1584
            WIRE 800 1584 800 1600
            WIRE 800 1296 1360 1296
            WIRE 1360 1296 1472 1296
            WIRE 1360 400 1440 400
            WIRE 1360 400 1360 688
            WIRE 1360 688 1440 688
            WIRE 1360 688 1360 960
            WIRE 1360 960 1456 960
            WIRE 1360 960 1360 1296
        END BRANCH
        IOMARKER 640 1600 S R180 28
        BEGIN BRANCH O(31:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 O(31:0) R0 28
        BEGIN INSTANCE XLXI_1 1440 496 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1440 784 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1456 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1472 1392 R0
        END INSTANCE
        BEGIN BRANCH A(7:0)
            WIRE 1216 464 1248 464
            WIRE 1248 464 1440 464
            BEGIN DISPLAY 1248 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1216 752 1312 752
            WIRE 1312 752 1440 752
            BEGIN DISPLAY 1312 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1232 624 1312 624
            WIRE 1312 624 1440 624
            BEGIN DISPLAY 1312 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1216 336 1360 336
            WIRE 1360 336 1440 336
            BEGIN DISPLAY 1360 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1264 1024 1312 1024
            WIRE 1312 1024 1456 1024
            BEGIN DISPLAY 1312 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1248 896 1312 896
            WIRE 1312 896 1456 896
            BEGIN DISPLAY 1312 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 1232 1232 1312 1232
            WIRE 1312 1232 1472 1232
            BEGIN DISPLAY 1312 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 1248 1360 1328 1360
            WIRE 1328 1360 1472 1360
            BEGIN DISPLAY 1328 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:24)
            WIRE 1856 1232 1920 1232
            WIRE 1920 1232 2016 1232
            BEGIN DISPLAY 1920 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(23:16)
            WIRE 1840 896 1968 896
            WIRE 1968 896 2080 896
            BEGIN DISPLAY 1968 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15:8)
            WIRE 1824 624 1888 624
            WIRE 1888 624 2080 624
            BEGIN DISPLAY 1888 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 1824 336 1936 336
            WIRE 1936 336 2016 336
            BEGIN DISPLAY 1936 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
