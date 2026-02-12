VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B(7:0)
        SIGNAL S
        SIGNAL A(7:0)
        SIGNAL O(7:0)
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL O(7)
        SIGNAL O(6)
        SIGNAL O(5)
        SIGNAL O(4)
        SIGNAL O(3)
        SIGNAL O(2)
        SIGNAL O(1)
        SIGNAL O(0)
        PORT Input B(7:0)
        PORT Input S
        PORT Input A(7:0)
        PORT Output O(7:0)
        BEGIN BLOCKDEF muxf5
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -256 
            LINE N 256 -96 96 -64 
            LINE N 256 -224 256 -96 
            LINE N 96 -256 256 -224 
            LINE N 320 -128 256 -128 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 0 -96 96 -96 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 muxf5
            PIN I0 A(0)
            PIN I1 B(0)
            PIN S S
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 muxf5
            PIN I0 A(1)
            PIN I1 B(1)
            PIN S S
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 muxf5
            PIN I0 A(2)
            PIN I1 B(2)
            PIN S S
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 muxf5
            PIN I0 A(3)
            PIN I1 B(3)
            PIN S S
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 muxf5
            PIN I0 A(4)
            PIN I1 B(4)
            PIN S S
            PIN O O(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 muxf5
            PIN I0 A(5)
            PIN I1 B(5)
            PIN S S
            PIN O O(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 muxf5
            PIN I0 A(6)
            PIN I1 B(6)
            PIN S S
            PIN O O(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 muxf5
            PIN I0 A(7)
            PIN I1 B(7)
            PIN S S
            PIN O O(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        INSTANCE XLXI_1 1424 416 R0
        INSTANCE XLXI_2 1408 704 R0
        INSTANCE XLXI_3 1424 1024 R0
        INSTANCE XLXI_4 1424 1312 R0
        INSTANCE XLXI_5 1440 1632 R0
        INSTANCE XLXI_6 1440 1968 R0
        INSTANCE XLXI_7 1456 2272 R0
        INSTANCE XLXI_8 1472 2576 R0
        BEGIN BRANCH B(7:0)
            WIRE 624 2816 784 2816
            WIRE 784 2816 1072 2816
            WIRE 1072 112 1072 320
            WIRE 1072 320 1072 608
            WIRE 1072 608 1072 928
            WIRE 1072 928 1072 1216
            WIRE 1072 1216 1072 1536
            WIRE 1072 1536 1072 1872
            WIRE 1072 1872 1072 2176
            WIRE 1072 2176 1072 2480
            WIRE 1072 2480 1072 2816
        END BRANCH
        BEGIN BRANCH S
            WIRE 624 3296 784 3296
            WIRE 784 3296 1472 3296
            WIRE 1360 384 1424 384
            WIRE 1360 384 1360 992
            WIRE 1360 992 1424 992
            WIRE 1360 992 1360 1024
            WIRE 1360 1024 1360 1344
            WIRE 1360 1344 1408 1344
            WIRE 1408 1344 1408 1616
            WIRE 1408 1616 1424 1616
            WIRE 1424 1616 1424 2016
            WIRE 1424 2016 1440 2016
            WIRE 1440 2016 1440 2272
            WIRE 1440 2272 1456 2272
            WIRE 1456 2272 1456 2608
            WIRE 1456 2608 1472 2608
            WIRE 1472 2608 1472 3296
            WIRE 1360 1024 1408 1024
            WIRE 1408 672 1408 1024
            WIRE 1408 1280 1424 1280
            WIRE 1408 1280 1408 1344
            WIRE 1424 1600 1440 1600
            WIRE 1424 1600 1424 1616
            WIRE 1440 1936 1440 1968
            WIRE 1440 1968 1440 2016
            WIRE 1456 2240 1456 2272
            WIRE 1472 2544 1472 2608
        END BRANCH
        IOMARKER 624 2816 B(7:0) R180 28
        IOMARKER 624 3296 S R180 28
        BEGIN BRANCH A(7:0)
            WIRE 624 2608 784 2608
            WIRE 768 96 784 96
            WIRE 784 96 784 192
            WIRE 784 192 784 480
            WIRE 784 480 784 800
            WIRE 784 800 784 1088
            WIRE 784 1088 784 1408
            WIRE 784 1408 784 1744
            WIRE 784 1744 784 2048
            WIRE 784 2048 784 2352
            WIRE 784 2352 784 2608
        END BRANCH
        IOMARKER 624 2608 A(7:0) R180 28
        BEGIN BRANCH O(7:0)
            WIRE 2688 176 2720 176
            WIRE 2720 176 2720 288
            WIRE 2720 288 2720 576
            WIRE 2720 576 2720 896
            WIRE 2720 896 2720 1184
            WIRE 2720 1184 2720 1504
            WIRE 2720 1504 2720 1840
            WIRE 2720 1840 2720 2144
            WIRE 2720 2144 2720 2448
            WIRE 2720 2448 2720 2528
            WIRE 2720 2528 2880 2528
        END BRANCH
        IOMARKER 2880 2528 O(7:0) R0 28
        BUSTAP 784 2352 880 2352
        BEGIN BRANCH A(7)
            WIRE 880 2352 1168 2352
            WIRE 1168 2352 1472 2352
            BEGIN DISPLAY 1176 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 2048 880 2048
        BEGIN BRANCH A(6)
            WIRE 880 2048 1168 2048
            WIRE 1168 2048 1456 2048
            BEGIN DISPLAY 1168 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 1744 880 1744
        BEGIN BRANCH A(5)
            WIRE 880 1744 1152 1744
            WIRE 1152 1744 1440 1744
            BEGIN DISPLAY 1160 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 1408 880 1408
        BEGIN BRANCH A(4)
            WIRE 880 1408 1152 1408
            WIRE 1152 1408 1440 1408
            BEGIN DISPLAY 1160 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 1088 880 1088
        BEGIN BRANCH A(3)
            WIRE 880 1088 1152 1088
            WIRE 1152 1088 1424 1088
            BEGIN DISPLAY 1152 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 800 880 800
        BEGIN BRANCH A(2)
            WIRE 880 800 1152 800
            WIRE 1152 800 1424 800
            BEGIN DISPLAY 1152 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 480 880 480
        BEGIN BRANCH A(1)
            WIRE 880 480 1136 480
            WIRE 1136 480 1408 480
            BEGIN DISPLAY 1144 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 192 880 192
        BEGIN BRANCH A(0)
            WIRE 880 192 1152 192
            WIRE 1152 192 1424 192
            BEGIN DISPLAY 1152 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 2480 1168 2480
        BEGIN BRANCH B(7)
            WIRE 1168 2480 1312 2480
            WIRE 1312 2480 1472 2480
            BEGIN DISPLAY 1320 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 2176 1168 2176
        BEGIN BRANCH B(6)
            WIRE 1168 2176 1312 2176
            WIRE 1312 2176 1456 2176
            BEGIN DISPLAY 1312 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1872 1168 1872
        BEGIN BRANCH B(5)
            WIRE 1168 1872 1296 1872
            WIRE 1296 1872 1440 1872
            BEGIN DISPLAY 1304 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1536 1168 1536
        BEGIN BRANCH B(4)
            WIRE 1168 1536 1296 1536
            WIRE 1296 1536 1440 1536
            BEGIN DISPLAY 1304 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1216 1168 1216
        BEGIN BRANCH B(3)
            WIRE 1168 1216 1296 1216
            WIRE 1296 1216 1424 1216
            BEGIN DISPLAY 1296 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 928 1168 928
        BEGIN BRANCH B(2)
            WIRE 1168 928 1296 928
            WIRE 1296 928 1424 928
            BEGIN DISPLAY 1296 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 608 1168 608
        BEGIN BRANCH B(1)
            WIRE 1168 608 1280 608
            WIRE 1280 608 1408 608
            BEGIN DISPLAY 1288 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 320 1168 320
        BEGIN BRANCH B(0)
            WIRE 1168 320 1296 320
            WIRE 1296 320 1424 320
            BEGIN DISPLAY 1296 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 2448 2624 2448
        BEGIN BRANCH O(7)
            WIRE 1792 2448 2208 2448
            WIRE 2208 2448 2624 2448
            BEGIN DISPLAY 2208 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 2144 2624 2144
        BEGIN BRANCH O(6)
            WIRE 1776 2144 2192 2144
            WIRE 2192 2144 2624 2144
            BEGIN DISPLAY 2200 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 1840 2624 1840
        BEGIN BRANCH O(5)
            WIRE 1760 1840 2192 1840
            WIRE 2192 1840 2624 1840
            BEGIN DISPLAY 2192 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 1504 2624 1504
        BEGIN BRANCH O(4)
            WIRE 1760 1504 2192 1504
            WIRE 2192 1504 2624 1504
            BEGIN DISPLAY 2192 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 1184 2624 1184
        BEGIN BRANCH O(3)
            WIRE 1744 1184 2176 1184
            WIRE 2176 1184 2624 1184
            BEGIN DISPLAY 2184 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 896 2624 896
        BEGIN BRANCH O(2)
            WIRE 1744 896 2176 896
            WIRE 2176 896 2624 896
            BEGIN DISPLAY 2184 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 576 2624 576
        BEGIN BRANCH O(1)
            WIRE 1728 576 2176 576
            WIRE 2176 576 2624 576
            BEGIN DISPLAY 2176 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2720 288 2624 288
        BEGIN BRANCH O(0)
            WIRE 1744 288 2176 288
            WIRE 2176 288 2624 288
            BEGIN DISPLAY 2184 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
