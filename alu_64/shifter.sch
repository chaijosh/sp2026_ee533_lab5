VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL O(31:0)
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_12
        SIGNAL B
        SIGNAL XLXN_17
        SIGNAL A(30)
        SIGNAL A(29)
        SIGNAL A(28)
        SIGNAL A(27)
        SIGNAL A(26)
        SIGNAL A(25)
        SIGNAL A(24)
        SIGNAL A(23:16)
        SIGNAL A(15:8)
        SIGNAL A(7:0)
        SIGNAL O(31)
        SIGNAL O(30)
        SIGNAL O(29)
        SIGNAL O(28)
        SIGNAL O(27)
        SIGNAL O(26)
        SIGNAL O(25)
        SIGNAL O(8:1)
        SIGNAL O(16:9)
        SIGNAL O(24:17)
        SIGNAL O(0)
        PORT Input A(31:0)
        PORT Output O(31:0)
        PORT Input B
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF xor_8_1
            TIMESTAMP 2026 1 25 4 28 56
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 XLXN_12
            PIN I1 A(24)
            PIN O O(25)
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 XLXN_12
            PIN I1 A(25)
            PIN O O(26)
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 XLXN_12
            PIN I1 A(26)
            PIN O O(27)
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 XLXN_12
            PIN I1 A(27)
            PIN O O(28)
        END BLOCK
        BEGIN BLOCK XLXI_9 xor2
            PIN I0 XLXN_12
            PIN I1 A(28)
            PIN O O(29)
        END BLOCK
        BEGIN BLOCK XLXI_10 xor2
            PIN I0 XLXN_12
            PIN I1 A(29)
            PIN O O(30)
        END BLOCK
        BEGIN BLOCK XLXI_11 xor2
            PIN I0 XLXN_12
            PIN I1 A(30)
            PIN O O(31)
        END BLOCK
        BEGIN BLOCK XLXI_4 gnd
            PIN G XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_13 xor2
            PIN I0 XLXN_12
            PIN I1 B
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_14 xor_8_1
            PIN A(7:0) A(23:16)
            PIN B XLXN_12
            PIN S(7:0) O(24:17)
        END BLOCK
        BEGIN BLOCK XLXI_15 xor_8_1
            PIN A(7:0) A(15:8)
            PIN B XLXN_12
            PIN S(7:0) O(16:9)
        END BLOCK
        BEGIN BLOCK XLXI_16 xor_8_1
            PIN A(7:0) A(7:0)
            PIN B XLXN_12
            PIN S(7:0) O(8:1)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_12
            WIRE 1392 272 1520 272
            WIRE 1392 272 1392 480
            WIRE 1392 480 1520 480
            WIRE 1392 480 1392 704
            WIRE 1392 704 1520 704
            WIRE 1392 704 1392 896
            WIRE 1392 896 1392 1072
            WIRE 1392 1072 1392 1200
            WIRE 1392 1200 1392 1344
            WIRE 1392 1344 1392 1488
            WIRE 1392 1488 1392 1488
            WIRE 1392 1488 1392 1616
            WIRE 1392 1616 1392 1840
            WIRE 1392 1840 1584 1840
            WIRE 1392 1840 1392 2096
            WIRE 1392 2096 1392 2240
            WIRE 1392 2096 1632 2096
            WIRE 1392 1616 1600 1616
            WIRE 1392 1488 1584 1488
            WIRE 1392 1344 1568 1344
            WIRE 1392 1200 1584 1200
            WIRE 1392 1072 1568 1072
            WIRE 1392 896 1568 896
        END BRANCH
        INSTANCE XLXI_5 1568 960 R0
        INSTANCE XLXI_6 1568 1136 R0
        INSTANCE XLXI_7 1584 1264 R0
        INSTANCE XLXI_8 1568 1408 R0
        INSTANCE XLXI_9 1584 1552 R0
        INSTANCE XLXI_10 1600 1680 R0
        INSTANCE XLXI_11 1584 1904 R0
        BEGIN BRANCH B
            WIRE 640 2128 800 2128
            WIRE 800 2032 1632 2032
            WIRE 800 2032 800 2128
        END BRANCH
        INSTANCE XLXI_4 1328 2368 R0
        IOMARKER 640 1888 A(31:0) R180 28
        IOMARKER 640 2128 B R180 28
        BEGIN BRANCH A(31:0)
            WIRE 640 1888 800 1888
            WIRE 800 176 800 208
            WIRE 800 208 800 416
            WIRE 800 416 800 640
            WIRE 800 640 800 816
            WIRE 800 816 800 832
            WIRE 800 832 800 1008
            WIRE 800 1008 800 1136
            WIRE 800 1136 800 1280
            WIRE 800 1280 800 1424
            WIRE 800 1424 800 1552
            WIRE 800 1552 800 1776
            WIRE 800 1776 800 1888
        END BRANCH
        IOMARKER 2736 2208 O(31:0) R0 28
        BEGIN BRANCH O(31:0)
            WIRE 2672 128 2672 208
            WIRE 2672 208 2672 240
            WIRE 2672 240 2672 416
            WIRE 2672 416 2672 640
            WIRE 2672 640 2672 864
            WIRE 2672 864 2672 1040
            WIRE 2672 1040 2672 1168
            WIRE 2672 1168 2672 1312
            WIRE 2672 1312 2672 1456
            WIRE 2672 1456 2672 1584
            WIRE 2672 1584 2672 1808
            WIRE 2672 1808 2672 2048
            WIRE 2672 2048 2672 2064
            WIRE 2672 2064 2672 2208
            WIRE 2672 2208 2736 2208
        END BRANCH
        INSTANCE XLXI_13 1632 2160 R0
        BUSTAP 800 1776 896 1776
        BEGIN BRANCH A(30)
            WIRE 896 1776 1232 1776
            WIRE 1232 1776 1584 1776
            BEGIN DISPLAY 1240 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1552 896 1552
        BEGIN BRANCH A(29)
            WIRE 896 1552 1248 1552
            WIRE 1248 1552 1600 1552
            BEGIN DISPLAY 1248 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1424 896 1424
        BEGIN BRANCH A(28)
            WIRE 896 1424 1232 1424
            WIRE 1232 1424 1584 1424
            BEGIN DISPLAY 1240 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1280 896 1280
        BEGIN BRANCH A(27)
            WIRE 896 1280 1232 1280
            WIRE 1232 1280 1568 1280
            BEGIN DISPLAY 1232 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1136 896 1136
        BEGIN BRANCH A(26)
            WIRE 896 1136 1232 1136
            WIRE 1232 1136 1584 1136
            BEGIN DISPLAY 1240 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1008 896 1008
        BEGIN BRANCH A(25)
            WIRE 896 1008 1232 1008
            WIRE 1232 1008 1568 1008
            BEGIN DISPLAY 1232 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 832 896 832
        BEGIN BRANCH A(24)
            WIRE 896 832 1232 832
            WIRE 1232 832 1568 832
            BEGIN DISPLAY 1232 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 640 896 640
        BEGIN BRANCH A(23:16)
            WIRE 896 640 1200 640
            WIRE 1200 640 1520 640
            BEGIN DISPLAY 1208 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 416 896 416
        BEGIN BRANCH A(15:8)
            WIRE 896 416 1200 416
            WIRE 1200 416 1520 416
            BEGIN DISPLAY 1208 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 208 896 208
        BEGIN BRANCH A(7:0)
            WIRE 896 208 1200 208
            WIRE 1200 208 1520 208
            BEGIN DISPLAY 1208 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 1808 2576 1808
        BEGIN BRANCH O(31)
            WIRE 1840 1808 2208 1808
            WIRE 2208 1808 2576 1808
            BEGIN DISPLAY 2208 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 1584 2576 1584
        BEGIN BRANCH O(30)
            WIRE 1856 1584 2208 1584
            WIRE 2208 1584 2576 1584
            BEGIN DISPLAY 2216 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 1456 2576 1456
        BEGIN BRANCH O(29)
            WIRE 1840 1456 2208 1456
            WIRE 2208 1456 2576 1456
            BEGIN DISPLAY 2208 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 1312 2576 1312
        BEGIN BRANCH O(28)
            WIRE 1824 1312 2192 1312
            WIRE 2192 1312 2576 1312
            BEGIN DISPLAY 2200 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 1168 2576 1168
        BEGIN BRANCH O(27)
            WIRE 1840 1168 2208 1168
            WIRE 2208 1168 2576 1168
            BEGIN DISPLAY 2208 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 1040 2576 1040
        BEGIN BRANCH O(26)
            WIRE 1824 1040 2192 1040
            WIRE 2192 1040 2576 1040
            BEGIN DISPLAY 2200 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 864 2576 864
        BEGIN BRANCH O(25)
            WIRE 1824 864 2192 864
            WIRE 2192 864 2576 864
            BEGIN DISPLAY 2200 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 208 2576 208
        BEGIN BRANCH O(8:1)
            WIRE 1904 208 2240 208
            WIRE 2240 208 2576 208
            BEGIN DISPLAY 2240 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 416 2576 416
        BEGIN BRANCH O(16:9)
            WIRE 1904 416 2240 416
            WIRE 2240 416 2576 416
            BEGIN DISPLAY 2240 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 640 2576 640
        BEGIN BRANCH O(24:17)
            WIRE 1904 640 2240 640
            WIRE 2240 640 2576 640
            BEGIN DISPLAY 2240 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2672 2064 2576 2064
        BEGIN BRANCH O(0)
            WIRE 1888 2064 2224 2064
            WIRE 2224 2064 2576 2064
            BEGIN DISPLAY 2232 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_14 1520 736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1520 512 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 1520 304 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
