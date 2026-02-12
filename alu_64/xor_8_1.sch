VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL S(7:0)
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        PORT Input A(7:0)
        PORT Input B
        PORT Output S(7:0)
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
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A(0)
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 B
            PIN I1 A(1)
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 xor2
            PIN I0 B
            PIN I1 A(2)
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 B
            PIN I1 A(3)
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 B
            PIN I1 A(4)
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 B
            PIN I1 A(5)
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 B
            PIN I1 A(6)
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 B
            PIN I1 A(7)
            PIN O S(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1520 272 R0
        INSTANCE XLXI_2 1520 448 R0
        INSTANCE XLXI_3 1520 640 R0
        INSTANCE XLXI_4 1520 800 R0
        INSTANCE XLXI_5 1520 976 R0
        INSTANCE XLXI_6 1520 1152 R0
        INSTANCE XLXI_7 1520 1296 R0
        INSTANCE XLXI_8 1520 1456 R0
        BEGIN BRANCH A(7:0)
            WIRE 640 1632 800 1632
            WIRE 800 64 800 144
            WIRE 800 144 800 320
            WIRE 800 320 800 512
            WIRE 800 512 800 672
            WIRE 800 672 800 848
            WIRE 800 848 800 1024
            WIRE 800 1024 800 1168
            WIRE 800 1168 800 1328
            WIRE 800 1328 800 1632
        END BRANCH
        BEGIN BRANCH B
            WIRE 640 2112 800 2112
            WIRE 800 2112 1152 2112
            WIRE 1152 208 1520 208
            WIRE 1152 208 1152 384
            WIRE 1152 384 1520 384
            WIRE 1152 384 1152 576
            WIRE 1152 576 1520 576
            WIRE 1152 576 1152 736
            WIRE 1152 736 1520 736
            WIRE 1152 736 1152 912
            WIRE 1152 912 1520 912
            WIRE 1152 912 1152 1088
            WIRE 1152 1088 1520 1088
            WIRE 1152 1088 1152 1232
            WIRE 1152 1232 1520 1232
            WIRE 1152 1232 1152 1392
            WIRE 1152 1392 1152 2112
            WIRE 1152 1392 1520 1392
        END BRANCH
        IOMARKER 640 1632 A(7:0) R180 28
        IOMARKER 640 2112 B R180 28
        BEGIN BRANCH S(7:0)
            WIRE 2624 80 2640 80
            WIRE 2640 80 2640 176
            WIRE 2640 176 2640 352
            WIRE 2640 352 2640 544
            WIRE 2640 544 2640 704
            WIRE 2640 704 2640 880
            WIRE 2640 880 2640 1056
            WIRE 2640 1056 2640 1200
            WIRE 2640 1200 2640 1360
            WIRE 2640 1360 2640 1520
            WIRE 2640 1520 2800 1520
        END BRANCH
        IOMARKER 2800 1520 S(7:0) R0 28
        BUSTAP 800 1328 896 1328
        BEGIN BRANCH A(7)
            WIRE 896 1328 1200 1328
            WIRE 1200 1328 1520 1328
            BEGIN DISPLAY 1208 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1168 896 1168
        BEGIN BRANCH A(6)
            WIRE 896 1168 1200 1168
            WIRE 1200 1168 1520 1168
            BEGIN DISPLAY 1208 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1024 896 1024
        BEGIN BRANCH A(5)
            WIRE 896 1024 1200 1024
            WIRE 1200 1024 1520 1024
            BEGIN DISPLAY 1208 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 848 896 848
        BEGIN BRANCH A(4)
            WIRE 896 848 1200 848
            WIRE 1200 848 1520 848
            BEGIN DISPLAY 1208 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 672 896 672
        BEGIN BRANCH A(3)
            WIRE 896 672 1200 672
            WIRE 1200 672 1520 672
            BEGIN DISPLAY 1208 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 512 896 512
        BEGIN BRANCH A(2)
            WIRE 896 512 1200 512
            WIRE 1200 512 1520 512
            BEGIN DISPLAY 1208 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 320 896 320
        BEGIN BRANCH A(1)
            WIRE 896 320 1200 320
            WIRE 1200 320 1520 320
            BEGIN DISPLAY 1208 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 144 896 144
        BEGIN BRANCH A(0)
            WIRE 896 144 1200 144
            WIRE 1200 144 1520 144
            BEGIN DISPLAY 1208 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 1360 2544 1360
        BEGIN BRANCH S(7)
            WIRE 1776 1360 2160 1360
            WIRE 2160 1360 2544 1360
            BEGIN DISPLAY 2160 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 1200 2544 1200
        BEGIN BRANCH S(6)
            WIRE 1776 1200 2160 1200
            WIRE 2160 1200 2544 1200
            BEGIN DISPLAY 2160 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 1056 2544 1056
        BEGIN BRANCH S(5)
            WIRE 1776 1056 2160 1056
            WIRE 2160 1056 2544 1056
            BEGIN DISPLAY 2160 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 880 2544 880
        BEGIN BRANCH S(4)
            WIRE 1776 880 2160 880
            WIRE 2160 880 2544 880
            BEGIN DISPLAY 2160 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 704 2544 704
        BEGIN BRANCH S(3)
            WIRE 1776 704 2160 704
            WIRE 2160 704 2544 704
            BEGIN DISPLAY 2160 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 544 2544 544
        BEGIN BRANCH S(2)
            WIRE 1776 544 2160 544
            WIRE 2160 544 2544 544
            BEGIN DISPLAY 2160 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 352 2544 352
        BEGIN BRANCH S(1)
            WIRE 1776 352 2160 352
            WIRE 2160 352 2544 352
            BEGIN DISPLAY 2160 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2640 176 2544 176
        BEGIN BRANCH S(0)
            WIRE 1776 176 2160 176
            WIRE 2160 176 2544 176
            BEGIN DISPLAY 2160 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
