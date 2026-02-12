VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL O(31:0)
        SIGNAL A(31:0)
        SIGNAL B
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL A(31:24)
        SIGNAL A(23:16)
        SIGNAL A(15:8)
        SIGNAL A(7:0)
        SIGNAL O(7:0)
        SIGNAL O(15:8)
        SIGNAL O(23:16)
        SIGNAL O(31:24)
        PORT Output O(31:0)
        PORT Input A(31:0)
        PORT Input B
        BEGIN BLOCKDEF xor_8_1
            TIMESTAMP 2026 1 25 4 28 56
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 xor_8_1
            PIN A(7:0) A(7:0)
            PIN B B
            PIN S(7:0) O(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 xor_8_1
            PIN A(7:0) A(15:8)
            PIN B B
            PIN S(7:0) O(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_4 xor_8_1
            PIN A(7:0) A(23:16)
            PIN B B
            PIN S(7:0) O(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 xor_8_1
            PIN A(7:0) A(31:24)
            PIN B B
            PIN S(7:0) O(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH O(31:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 O(31:0) R0 28
        BEGIN BRANCH A(31:0)
            WIRE 512 1392 672 1392
        END BRANCH
        BEGIN BRANCH B
            WIRE 512 1872 672 1872
            WIRE 672 1536 672 1872
            WIRE 672 1536 1392 1536
            WIRE 1392 1536 1456 1536
            WIRE 1392 672 1440 672
            WIRE 1392 672 1392 928
            WIRE 1392 928 1440 928
            WIRE 1392 928 1392 1216
            WIRE 1392 1216 1456 1216
            WIRE 1392 1216 1392 1536
        END BRANCH
        IOMARKER 512 1392 A(31:0) R180 28
        IOMARKER 512 1872 B R180 28
        BEGIN INSTANCE XLXI_2 1440 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1440 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1456 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1456 1568 R0
        END INSTANCE
        BEGIN BRANCH A(31:24)
            WIRE 1296 1472 1344 1472
            WIRE 1344 1472 1456 1472
            BEGIN DISPLAY 1344 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1296 1152 1328 1152
            WIRE 1328 1152 1344 1152
            WIRE 1344 1152 1456 1152
            BEGIN DISPLAY 1328 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1296 864 1344 864
            WIRE 1344 864 1440 864
            BEGIN DISPLAY 1344 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1296 608 1344 608
            WIRE 1344 608 1440 608
            BEGIN DISPLAY 1344 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 1824 608 1872 608
            WIRE 1872 608 2032 608
            BEGIN DISPLAY 1872 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15:8)
            WIRE 1824 864 1936 864
            WIRE 1936 864 2016 864
            BEGIN DISPLAY 1936 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(23:16)
            WIRE 1840 1152 1936 1152
            WIRE 1936 1152 2032 1152
            WIRE 2032 1152 2032 1168
            WIRE 2016 1168 2032 1168
            BEGIN DISPLAY 1936 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:24)
            WIRE 1840 1472 1984 1472
            WIRE 1984 1472 2064 1472
            BEGIN DISPLAY 1984 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
