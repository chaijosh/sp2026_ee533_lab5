VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B
        SIGNAL S
        SIGNAL CO
        SIGNAL ALU_and
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL CI
        SIGNAL ALU_or
        SIGNAL XLXN_18
        SIGNAL ALU_xnor
        SIGNAL A
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        PORT Input B
        PORT Output S
        PORT Output CO
        PORT Output ALU_and
        PORT Input CI
        PORT Output ALU_or
        PORT Output ALU_xnor
        PORT Input A
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
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
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B
            PIN I1 A
            PIN O ALU_and
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 CI
            PIN I1 A
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 CI
            PIN I1 B
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 CI
            PIN I1 XLXN_18
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 XLXN_10
            PIN I1 XLXN_9
            PIN I2 ALU_and
            PIN O CO
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I XLXN_18
            PIN O ALU_xnor
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 B
            PIN I1 A
            PIN O ALU_or
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B
            WIRE 704 1328 864 1328
            WIRE 864 1328 896 1328
            WIRE 896 1328 1008 1328
            WIRE 1008 1328 1088 1328
            WIRE 1088 1328 1088 1744
            WIRE 1088 1744 1280 1744
            WIRE 1008 192 1360 192
            WIRE 1008 192 1008 1328
            WIRE 1088 704 1312 704
            WIRE 1088 704 1088 1312
            WIRE 1088 1312 1088 1328
            WIRE 1088 1312 1168 1312
            WIRE 1168 1280 1168 1312
            WIRE 1168 1280 1248 1280
        END BRANCH
        BEGIN BRANCH S
            WIRE 2208 800 2784 800
            WIRE 2784 800 2784 848
            WIRE 2784 848 2944 848
        END BRANCH
        BEGIN BRANCH CO
            WIRE 2240 1344 2784 1344
            WIRE 2784 1328 2944 1328
            WIRE 2784 1328 2784 1344
        END BRANCH
        INSTANCE XLXI_1 1248 1344 R0
        INSTANCE XLXI_2 1296 1552 R0
        INSTANCE XLXI_3 1280 1872 R0
        INSTANCE XLXI_4 1312 768 R0
        INSTANCE XLXI_5 1952 896 R0
        INSTANCE XLXI_6 1984 1472 R0
        BEGIN BRANCH XLXN_9
            WIRE 1552 1456 1760 1456
            WIRE 1760 1344 1760 1456
            WIRE 1760 1344 1984 1344
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1536 1776 1984 1776
            WIRE 1984 1408 1984 1776
        END BRANCH
        BEGIN BRANCH CI
            WIRE 704 1808 864 1808
            WIRE 864 1808 928 1808
            WIRE 928 1808 1280 1808
            WIRE 928 832 1952 832
            WIRE 928 832 928 1488
            WIRE 928 1488 928 1504
            WIRE 928 1504 928 1808
            WIRE 928 1488 1296 1488
        END BRANCH
        IOMARKER 704 848 A R180 28
        IOMARKER 704 1328 B R180 28
        IOMARKER 704 1808 CI R180 28
        IOMARKER 2944 848 S R0 28
        IOMARKER 2944 1328 CO R0 28
        IOMARKER 2192 1136 ALU_and R0 28
        BEGIN BRANCH ALU_and
            WIRE 1504 1248 1696 1248
            WIRE 1696 1248 1984 1248
            WIRE 1984 1248 1984 1280
            WIRE 1696 1136 2192 1136
            WIRE 1696 1136 1696 1248
        END BRANCH
        BEGIN BRANCH ALU_or
            WIRE 1616 160 1680 160
            WIRE 1680 160 1680 272
            WIRE 1616 272 1680 272
            WIRE 1616 272 1616 336
            WIRE 1616 336 2064 336
        END BRANCH
        IOMARKER 2064 336 ALU_or R0 28
        INSTANCE XLXI_8 2032 672 R0
        BEGIN BRANCH XLXN_18
            WIRE 1568 672 1760 672
            WIRE 1760 672 1760 768
            WIRE 1760 768 1952 768
            WIRE 1760 640 2032 640
            WIRE 1760 640 1760 672
        END BRANCH
        BEGIN BRANCH ALU_xnor
            WIRE 2256 640 2592 640
        END BRANCH
        IOMARKER 2592 640 ALU_xnor R0 28
        BEGIN BRANCH A
            WIRE 704 848 864 848
            WIRE 864 848 864 1216
            WIRE 864 1216 896 1216
            WIRE 896 1216 1248 1216
            WIRE 832 1216 864 1216
            WIRE 832 1216 832 1424
            WIRE 832 1424 1296 1424
            WIRE 864 304 1344 304
            WIRE 1344 304 1360 304
            WIRE 864 304 864 640
            WIRE 864 640 1312 640
            WIRE 864 640 864 848
            WIRE 896 368 896 1216
            WIRE 896 368 1360 368
            WIRE 1296 128 1360 128
            WIRE 1296 128 1296 272
            WIRE 1296 272 1360 272
            WIRE 1360 272 1360 304
        END BRANCH
        INSTANCE XLXI_9 1360 256 R0
    END SHEET
END SCHEMATIC
