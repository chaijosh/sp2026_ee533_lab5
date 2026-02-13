VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_16
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_22
        SIGNAL XLXN_25
        SIGNAL XLXN_31
        SIGNAL XLXN_34
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_40
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        SIGNAL XLXN_60
        SIGNAL XLXN_61
        SIGNAL XLXN_63
        SIGNAL pc_next(8:0)
        SIGNAL pc(8:0)
        SIGNAL pc_next(1)
        SIGNAL pc(0)
        SIGNAL pc_next(0)
        SIGNAL pc(1)
        SIGNAL pc_next(2)
        SIGNAL cout1
        SIGNAL pc(2)
        SIGNAL cout2
        SIGNAL pc_next(4)
        SIGNAL cout3
        SIGNAL pc_next(5)
        SIGNAL XLXN_50
        SIGNAL pc_next(6)
        SIGNAL XLXN_52
        SIGNAL pc_next(7)
        SIGNAL XLXN_54
        SIGNAL pc_next(8)
        SIGNAL pc(3)
        SIGNAL pc(4)
        SIGNAL pc(5)
        SIGNAL pc(6)
        SIGNAL pc(7)
        SIGNAL XLXN_70
        SIGNAL pc(8)
        SIGNAL pc_next(3)
        SIGNAL XLXN_98
        PORT Output pc_next(8:0)
        PORT Input pc(8:0)
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
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
        BEGIN BLOCK XLXI_1 inv
            PIN I pc(0)
            PIN O pc_next(0)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 pc(1)
            PIN I1 pc(0)
            PIN O cout1
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 pc(2)
            PIN I1 cout1
            PIN O pc_next(2)
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 pc(1)
            PIN I1 pc(0)
            PIN O pc_next(1)
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 pc(2)
            PIN I1 cout1
            PIN O cout2
        END BLOCK
        BEGIN BLOCK XLXI_9 xor2
            PIN I0 pc(3)
            PIN I1 cout2
            PIN O pc_next(3)
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 pc(3)
            PIN I1 cout2
            PIN O cout3
        END BLOCK
        BEGIN BLOCK XLXI_11 xor2
            PIN I0 pc(4)
            PIN I1 cout3
            PIN O pc_next(4)
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 pc(4)
            PIN I1 cout3
            PIN O XLXN_50
        END BLOCK
        BEGIN BLOCK XLXI_13 xor2
            PIN I0 pc(5)
            PIN I1 XLXN_50
            PIN O pc_next(5)
        END BLOCK
        BEGIN BLOCK XLXI_14 and2
            PIN I0 pc(5)
            PIN I1 XLXN_50
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_15 xor2
            PIN I0 pc(6)
            PIN I1 XLXN_52
            PIN O pc_next(6)
        END BLOCK
        BEGIN BLOCK XLXI_16 and2
            PIN I0 pc(6)
            PIN I1 XLXN_52
            PIN O XLXN_54
        END BLOCK
        BEGIN BLOCK XLXI_17 xor2
            PIN I0 pc(7)
            PIN I1 XLXN_54
            PIN O pc_next(7)
        END BLOCK
        BEGIN BLOCK XLXI_18 and2
            PIN I0 pc(7)
            PIN I1 XLXN_54
            PIN O XLXN_70
        END BLOCK
        BEGIN BLOCK XLXI_19 xor2
            PIN I0 pc(8)
            PIN I1 XLXN_70
            PIN O pc_next(8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH pc(8:0)
            WIRE 160 160 320 160
            WIRE 320 160 320 176
            WIRE 320 176 320 336
            WIRE 320 336 320 608
            WIRE 320 608 320 880
            WIRE 320 880 320 1152
            WIRE 320 1152 320 1424
            WIRE 320 1424 320 1696
            WIRE 320 1696 320 1968
            WIRE 320 1968 320 2240
        END BRANCH
        BUSTAP 320 176 416 176
        BEGIN BRANCH pc_next(1)
            WIRE 720 304 1072 304
            WIRE 1072 304 3024 304
            WIRE 3024 304 3072 304
            WIRE 3072 304 3120 304
            BEGIN DISPLAY 3072 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 320 336 416 336
        INSTANCE XLXI_1 464 208 R0
        BEGIN BRANCH pc(0)
            WIRE 416 176 432 176
            WIRE 432 176 464 176
            WIRE 432 176 432 272
            WIRE 432 272 432 416
            WIRE 432 416 464 416
            WIRE 432 272 464 272
            BEGIN DISPLAY 432 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_next(0)
            WIRE 688 176 1072 176
            WIRE 1072 176 3008 176
            WIRE 3008 176 3072 176
            WIRE 3072 176 3120 176
            BEGIN DISPLAY 3072 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc(1)
            WIRE 416 336 448 336
            WIRE 448 336 448 480
            WIRE 448 480 464 480
            WIRE 448 336 464 336
            BEGIN DISPLAY 448 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_next(2)
            WIRE 1024 576 1072 576
            WIRE 1072 576 3040 576
            WIRE 3040 576 3072 576
            WIRE 3072 576 3120 576
            BEGIN DISPLAY 3072 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 320 608 416 608
        INSTANCE XLXI_4 464 544 R0
        INSTANCE XLXI_5 768 672 R0
        INSTANCE XLXI_2 464 400 R0
        BEGIN BRANCH cout1
            WIRE 720 448 736 448
            WIRE 736 448 736 544
            WIRE 736 544 768 544
            WIRE 736 544 736 688
            WIRE 736 688 784 688
            BEGIN DISPLAY 736 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc(2)
            WIRE 416 608 432 608
            WIRE 432 608 720 608
            WIRE 720 608 768 608
            WIRE 720 608 720 752
            WIRE 720 752 784 752
            BEGIN DISPLAY 432 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 784 816 R0
        INSTANCE XLXI_9 1088 944 R0
        BEGIN BRANCH cout2
            WIRE 1040 720 1056 720
            WIRE 1056 720 1056 816
            WIRE 1056 816 1088 816
            WIRE 1056 816 1056 960
            WIRE 1056 960 1104 960
            BEGIN DISPLAY 1056 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1104 1088 R0
        BEGIN BRANCH pc_next(4)
            WIRE 1664 1120 1712 1120
            WIRE 1712 1120 3040 1120
            WIRE 3040 1120 3072 1120
            WIRE 3072 1120 3120 1120
            BEGIN DISPLAY 3072 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 1408 1216 R0
        BEGIN BRANCH cout3
            WIRE 1360 992 1376 992
            WIRE 1376 992 1376 1088
            WIRE 1376 1088 1408 1088
            WIRE 1376 1088 1376 1232
            WIRE 1376 1232 1424 1232
            BEGIN DISPLAY 1376 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 1424 1360 R0
        BEGIN BRANCH pc_next(5)
            WIRE 1984 1392 2032 1392
            WIRE 2032 1392 3056 1392
            WIRE 3056 1392 3072 1392
            WIRE 3072 1392 3120 1392
            BEGIN DISPLAY 3072 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 1728 1488 R0
        BEGIN BRANCH XLXN_50
            WIRE 1680 1264 1696 1264
            WIRE 1696 1264 1696 1360
            WIRE 1696 1360 1728 1360
            WIRE 1696 1360 1696 1504
            WIRE 1696 1504 1744 1504
            BEGIN DISPLAY 1696 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 1744 1632 R0
        BEGIN BRANCH pc_next(6)
            WIRE 2320 1664 2368 1664
            WIRE 2368 1664 3072 1664
            WIRE 3072 1664 3120 1664
            BEGIN DISPLAY 3072 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_15 2064 1760 R0
        BEGIN BRANCH XLXN_52
            WIRE 2000 1536 2032 1536
            WIRE 2032 1536 2032 1632
            WIRE 2032 1632 2064 1632
            WIRE 2032 1632 2032 1776
            WIRE 2032 1776 2080 1776
            BEGIN DISPLAY 2032 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_16 2080 1904 R0
        BEGIN BRANCH pc_next(7)
            WIRE 2640 1936 2688 1936
            WIRE 2688 1936 3072 1936
            WIRE 3072 1936 3120 1936
            BEGIN DISPLAY 3072 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_17 2384 2032 R0
        BEGIN BRANCH XLXN_54
            WIRE 2336 1808 2352 1808
            WIRE 2352 1808 2352 1904
            WIRE 2352 1904 2384 1904
            WIRE 2352 1904 2352 2048
            WIRE 2352 2048 2400 2048
            BEGIN DISPLAY 2352 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 2400 2176 R0
        BEGIN BRANCH pc_next(8)
            WIRE 2960 2208 3008 2208
            WIRE 3008 2208 3072 2208
            WIRE 3072 2208 3120 2208
            BEGIN DISPLAY 3072 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_19 2704 2304 R0
        BUSTAP 320 880 416 880
        BUSTAP 320 1152 416 1152
        BUSTAP 320 1424 416 1424
        BUSTAP 320 1696 416 1696
        BUSTAP 320 2240 416 2240
        BUSTAP 320 1968 416 1968
        BEGIN BRANCH pc(3)
            WIRE 416 880 448 880
            WIRE 448 880 1040 880
            WIRE 1040 880 1088 880
            WIRE 1040 880 1040 1024
            WIRE 1040 1024 1104 1024
            BEGIN DISPLAY 448 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc(4)
            WIRE 416 1152 464 1152
            WIRE 464 1152 1360 1152
            WIRE 1360 1152 1360 1296
            WIRE 1360 1296 1424 1296
            WIRE 1360 1152 1408 1152
            BEGIN DISPLAY 464 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc(5)
            WIRE 416 1424 464 1424
            WIRE 464 1424 1680 1424
            WIRE 1680 1424 1680 1568
            WIRE 1680 1568 1744 1568
            WIRE 1680 1424 1728 1424
            BEGIN DISPLAY 464 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc(6)
            WIRE 416 1696 464 1696
            WIRE 464 1696 2016 1696
            WIRE 2016 1696 2064 1696
            WIRE 2016 1696 2016 1840
            WIRE 2016 1840 2080 1840
            BEGIN DISPLAY 464 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc(7)
            WIRE 416 1968 464 1968
            WIRE 464 1968 2336 1968
            WIRE 2336 1968 2384 1968
            WIRE 2336 1968 2336 2112
            WIRE 2336 2112 2400 2112
            BEGIN DISPLAY 464 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_70
            WIRE 2656 2080 2672 2080
            WIRE 2672 2080 2672 2176
            WIRE 2672 2176 2704 2176
        END BRANCH
        BEGIN BRANCH pc(8)
            WIRE 416 2240 464 2240
            WIRE 464 2240 2704 2240
            BEGIN DISPLAY 464 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_next(8:0)
            WIRE 3216 96 3328 96
            WIRE 3216 96 3216 176
            WIRE 3216 176 3216 304
            WIRE 3216 304 3216 576
            WIRE 3216 576 3216 848
            WIRE 3216 848 3216 1120
            WIRE 3216 1120 3216 1392
            WIRE 3216 1392 3216 1664
            WIRE 3216 1664 3216 1936
            WIRE 3216 1936 3216 2192
            WIRE 3216 2192 3216 2208
        END BRANCH
        IOMARKER 160 160 pc(8:0) R180 28
        BUSTAP 3216 2208 3120 2208
        BEGIN BRANCH pc_next(3)
            WIRE 1344 848 1360 848
            WIRE 1360 848 1408 848
            WIRE 1408 848 3040 848
            WIRE 3040 848 3072 848
            WIRE 3072 848 3120 848
            BEGIN DISPLAY 3072 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3328 96 pc_next(8:0) R0 28
        BUSTAP 3216 176 3120 176
        BUSTAP 3216 304 3120 304
        BUSTAP 3216 576 3120 576
        BUSTAP 3216 848 3120 848
        BUSTAP 3216 1120 3120 1120
        BUSTAP 3216 1392 3120 1392
        BUSTAP 3216 1664 3120 1664
        BUSTAP 3216 1936 3120 1936
    END SHEET
END SCHEMATIC
