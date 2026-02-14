VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CO
        SIGNAL alu_or(7:0)
        SIGNAL alu_xnor(7:0)
        SIGNAL alu_and(7:0)
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL XLXN_7(7:0)
        SIGNAL B(7:0)
        SIGNAL XLXN_9(7:0)
        SIGNAL XLXN_10(7:0)
        SIGNAL XLXN_11
        SIGNAL CI
        SIGNAL XLXN_13
        SIGNAL XLXN_135
        SIGNAL XLXN_15
        SIGNAL XLXN_136
        SIGNAL XLXN_17
        SIGNAL XLXN_137
        SIGNAL XLXN_19
        SIGNAL XLXN_138
        SIGNAL XLXN_21
        SIGNAL XLXN_139
        SIGNAL XLXN_23
        SIGNAL XLXN_140
        SIGNAL XLXN_25
        SIGNAL XLXN_141
        SIGNAL alu_or(7)
        SIGNAL alu_or(6)
        SIGNAL alu_or(5)
        SIGNAL alu_or(4)
        SIGNAL alu_or(3)
        SIGNAL alu_or(2)
        SIGNAL alu_or(1)
        SIGNAL alu_or(0)
        SIGNAL alu_xnor(7)
        SIGNAL alu_xnor(6)
        SIGNAL alu_xnor(5)
        SIGNAL alu_xnor(4)
        SIGNAL alu_xnor(3)
        SIGNAL alu_xnor(2)
        SIGNAL alu_xnor(1)
        SIGNAL alu_xnor(0)
        SIGNAL alu_and(7)
        SIGNAL alu_and(6)
        SIGNAL alu_and(5)
        SIGNAL alu_and(4)
        SIGNAL alu_and(3)
        SIGNAL alu_and(2)
        SIGNAL alu_and(1)
        SIGNAL alu_and(0)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL A(7)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL A(6)
        SIGNAL XLXN_142
        SIGNAL XLXN_143
        SIGNAL Overflow
        PORT Output CO
        PORT Output alu_or(7:0)
        PORT Output alu_xnor(7:0)
        PORT Output alu_and(7:0)
        PORT Output S(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input CI
        PORT Output Overflow
        BEGIN BLOCKDEF alu_1b
            TIMESTAMP 2026 2 12 2 44 3
            LINE N 320 96 384 96 
            LINE N 320 32 384 32 
            LINE N 64 -224 0 -224 
            LINE N 64 -128 0 -128 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 64 -256 320 128 
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
        BEGIN BLOCK XLXI_11 alu_1b
            PIN A A(0)
            PIN B B(0)
            PIN CI CI
            PIN S S(0)
            PIN CO XLXN_135
            PIN ALU_and alu_and(0)
            PIN ALU_or alu_or(0)
            PIN ALU_xnor alu_xnor(0)
        END BLOCK
        BEGIN BLOCK XLXI_12 alu_1b
            PIN A A(1)
            PIN B B(1)
            PIN CI XLXN_135
            PIN S S(1)
            PIN CO XLXN_136
            PIN ALU_and alu_and(1)
            PIN ALU_or alu_or(1)
            PIN ALU_xnor alu_xnor(1)
        END BLOCK
        BEGIN BLOCK XLXI_13 alu_1b
            PIN A A(2)
            PIN B B(2)
            PIN CI XLXN_136
            PIN S S(2)
            PIN CO XLXN_138
            PIN ALU_and alu_and(2)
            PIN ALU_or alu_or(2)
            PIN ALU_xnor alu_xnor(2)
        END BLOCK
        BEGIN BLOCK XLXI_14 alu_1b
            PIN A A(3)
            PIN B B(3)
            PIN CI XLXN_138
            PIN S S(3)
            PIN CO XLXN_137
            PIN ALU_and alu_and(3)
            PIN ALU_or alu_or(3)
            PIN ALU_xnor alu_xnor(3)
        END BLOCK
        BEGIN BLOCK XLXI_15 alu_1b
            PIN A A(4)
            PIN B B(4)
            PIN CI XLXN_137
            PIN S S(4)
            PIN CO XLXN_140
            PIN ALU_and alu_and(4)
            PIN ALU_or alu_or(4)
            PIN ALU_xnor alu_xnor(4)
        END BLOCK
        BEGIN BLOCK XLXI_16 alu_1b
            PIN A A(5)
            PIN B B(5)
            PIN CI XLXN_140
            PIN S S(5)
            PIN CO XLXN_139
            PIN ALU_and alu_and(5)
            PIN ALU_or alu_or(5)
            PIN ALU_xnor alu_xnor(5)
        END BLOCK
        BEGIN BLOCK XLXI_17 alu_1b
            PIN A A(6)
            PIN B B(6)
            PIN CI XLXN_139
            PIN S S(6)
            PIN CO XLXN_141
            PIN ALU_and alu_and(6)
            PIN ALU_or alu_or(6)
            PIN ALU_xnor alu_xnor(6)
        END BLOCK
        BEGIN BLOCK XLXI_18 alu_1b
            PIN A A(7)
            PIN B B(7)
            PIN CI XLXN_141
            PIN S S(7)
            PIN CO CO
            PIN ALU_and alu_and(7)
            PIN ALU_or alu_or(7)
            PIN ALU_xnor alu_xnor(7)
        END BLOCK
        BEGIN BLOCK XLXI_20 xor2
            PIN I0 XLXN_141
            PIN I1 CO
            PIN O Overflow
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE XLXI_11 2192 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 2192 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 2192 1840 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 2192 2272 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 2192 2736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 2192 3200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 2192 3632 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 2192 4080 R0
        END INSTANCE
        BEGIN BRANCH CO
            WIRE 2576 3920 2624 3920
            WIRE 2624 3920 2848 3920
            WIRE 2848 3920 2848 4096
            WIRE 2848 4096 2864 4096
            WIRE 2864 4096 2864 5088
            WIRE 2864 5088 4352 5088
            WIRE 2624 3920 2624 5200
            WIRE 2624 5200 2736 5200
        END BRANCH
        BEGIN BRANCH alu_or(7:0)
            WIRE 3120 432 3120 976
            WIRE 3120 976 3120 1424
            WIRE 3120 1424 3120 1872
            WIRE 3120 1872 3120 2304
            WIRE 3120 2304 3120 2768
            WIRE 3120 2768 3120 3232
            WIRE 3120 3232 3120 3664
            WIRE 3120 3664 3120 4112
            WIRE 3120 4112 3120 4752
            WIRE 3120 4752 3664 4752
        END BRANCH
        BEGIN BRANCH alu_xnor(7:0)
            WIRE 3392 192 3392 1040
            WIRE 3392 1040 3392 1488
            WIRE 3392 1488 3392 1936
            WIRE 3392 1936 3392 2368
            WIRE 3392 2368 3392 2832
            WIRE 3392 2832 3392 3296
            WIRE 3392 3296 3392 3728
            WIRE 3392 3728 3392 4176
            WIRE 3392 4176 3392 4480
            WIRE 3392 4480 3952 4480
        END BRANCH
        BEGIN BRANCH alu_and(7:0)
            WIRE 3552 192 3552 848
            WIRE 3552 848 3552 1296
            WIRE 3552 1296 3552 1744
            WIRE 3552 1744 3552 2176
            WIRE 3552 2176 3552 2640
            WIRE 3552 2640 3552 3104
            WIRE 3552 3104 3552 3536
            WIRE 3552 3536 3552 3984
            WIRE 3552 3984 3552 4224
            WIRE 3552 4224 3984 4224
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 3792 192 3792 720
            WIRE 3792 720 3792 1168
            WIRE 3792 1168 3792 1616
            WIRE 3792 1616 3792 2048
            WIRE 3792 2048 3792 2512
            WIRE 3792 2512 3792 2976
            WIRE 3792 2976 3792 3408
            WIRE 3792 3408 3792 3856
            WIRE 3792 3856 3792 4016
            WIRE 3792 4016 4032 4016
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1312 4384 1456 4384
            WIRE 1456 192 1456 720
            WIRE 1456 720 1456 1168
            WIRE 1456 1168 1456 1616
            WIRE 1456 1616 1456 2048
            WIRE 1456 2048 1456 2512
            WIRE 1456 2512 1456 2976
            WIRE 1456 2976 1456 3408
            WIRE 1456 3408 1456 3856
            WIRE 1456 3856 1456 4384
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1312 4624 1632 4624
            WIRE 1616 2608 1616 3072
            WIRE 1616 3072 1632 3072
            WIRE 1632 3072 1632 3504
            WIRE 1632 3504 1632 3952
            WIRE 1632 3952 1632 4624
            WIRE 1616 2608 1632 2608
            WIRE 1632 192 1632 816
            WIRE 1632 816 1632 1264
            WIRE 1632 1264 1632 1712
            WIRE 1632 1712 1632 2144
            WIRE 1632 2144 1632 2608
        END BRANCH
        BEGIN BRANCH CI
            WIRE 1296 4864 2080 4864
            WIRE 2080 400 2080 4864
            WIRE 2080 400 2192 400
            WIRE 2112 384 2192 384
            WIRE 2192 384 2192 400
            WIRE 2112 384 2112 912
            WIRE 2112 912 2192 912
        END BRANCH
        BEGIN BRANCH XLXN_135
            WIRE 2128 1360 2192 1360
            WIRE 2128 1360 2128 1568
            WIRE 2128 1568 2656 1568
            WIRE 2576 784 2656 784
            WIRE 2656 784 2656 1568
        END BRANCH
        BEGIN BRANCH XLXN_136
            WIRE 2128 1808 2192 1808
            WIRE 2128 1808 2128 1984
            WIRE 2128 1984 2640 1984
            WIRE 2576 1232 2640 1232
            WIRE 2640 1232 2640 1984
        END BRANCH
        BEGIN BRANCH XLXN_137
            WIRE 2112 2704 2192 2704
            WIRE 2112 2704 2112 2928
            WIRE 2112 2928 2656 2928
            WIRE 2576 2112 2656 2112
            WIRE 2656 2112 2656 2928
        END BRANCH
        BEGIN BRANCH XLXN_138
            WIRE 2128 2000 2128 2240
            WIRE 2128 2240 2192 2240
            WIRE 2128 2000 2624 2000
            WIRE 2576 1680 2624 1680
            WIRE 2624 1680 2624 2000
        END BRANCH
        BEGIN BRANCH XLXN_139
            WIRE 2112 3600 2192 3600
            WIRE 2112 3600 2112 3808
            WIRE 2112 3808 2656 3808
            WIRE 2576 3040 2656 3040
            WIRE 2656 3040 2656 3808
        END BRANCH
        BEGIN BRANCH XLXN_140
            WIRE 2128 3168 2192 3168
            WIRE 2128 3168 2128 3344
            WIRE 2128 3344 2640 3344
            WIRE 2576 2576 2640 2576
            WIRE 2640 2576 2640 3344
        END BRANCH
        BEGIN BRANCH XLXN_141
            WIRE 2128 3792 2128 4048
            WIRE 2128 4048 2192 4048
            WIRE 2128 4048 2128 5264
            WIRE 2128 5264 2736 5264
            WIRE 2128 3792 2640 3792
            WIRE 2576 3472 2640 3472
            WIRE 2640 3472 2640 3792
        END BRANCH
        BUSTAP 3120 4112 3024 4112
        BEGIN BRANCH alu_or(7)
            WIRE 2576 4112 2800 4112
            WIRE 2800 4112 3024 4112
            BEGIN DISPLAY 2800 4112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 3664 3024 3664
        BEGIN BRANCH alu_or(6)
            WIRE 2576 3664 2800 3664
            WIRE 2800 3664 3024 3664
            BEGIN DISPLAY 2800 3664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 3232 3024 3232
        BEGIN BRANCH alu_or(5)
            WIRE 2576 3232 2800 3232
            WIRE 2800 3232 3024 3232
            BEGIN DISPLAY 2800 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 2768 3024 2768
        BEGIN BRANCH alu_or(4)
            WIRE 2576 2768 2800 2768
            WIRE 2800 2768 3024 2768
            BEGIN DISPLAY 2800 2768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 2304 3024 2304
        BEGIN BRANCH alu_or(3)
            WIRE 2576 2304 2800 2304
            WIRE 2800 2304 3024 2304
            BEGIN DISPLAY 2800 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 1872 3024 1872
        BEGIN BRANCH alu_or(2)
            WIRE 2576 1872 2800 1872
            WIRE 2800 1872 3024 1872
            BEGIN DISPLAY 2800 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 1424 3024 1424
        BEGIN BRANCH alu_or(1)
            WIRE 2576 1424 2800 1424
            WIRE 2800 1424 3024 1424
            BEGIN DISPLAY 2800 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3120 976 3024 976
        BEGIN BRANCH alu_or(0)
            WIRE 2576 976 2800 976
            WIRE 2800 976 3024 976
            BEGIN DISPLAY 2800 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 4176 3296 4176
        BEGIN BRANCH alu_xnor(7)
            WIRE 2576 4176 2928 4176
            WIRE 2928 4176 2928 4176
            WIRE 2928 4176 3296 4176
            BEGIN DISPLAY 2936 4176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 3728 3296 3728
        BEGIN BRANCH alu_xnor(6)
            WIRE 2576 3728 2928 3728
            WIRE 2928 3728 2928 3728
            WIRE 2928 3728 3296 3728
            BEGIN DISPLAY 2936 3728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 3296 3296 3296
        BEGIN BRANCH alu_xnor(5)
            WIRE 2576 3296 2928 3296
            WIRE 2928 3296 2928 3296
            WIRE 2928 3296 3296 3296
            BEGIN DISPLAY 2936 3296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 2832 3296 2832
        BEGIN BRANCH alu_xnor(4)
            WIRE 2576 2832 2928 2832
            WIRE 2928 2832 2928 2832
            WIRE 2928 2832 3296 2832
            BEGIN DISPLAY 2936 2832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 2368 3296 2368
        BEGIN BRANCH alu_xnor(3)
            WIRE 2576 2368 2928 2368
            WIRE 2928 2368 2928 2368
            WIRE 2928 2368 3296 2368
            BEGIN DISPLAY 2936 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 1936 3296 1936
        BEGIN BRANCH alu_xnor(2)
            WIRE 2576 1936 2928 1936
            WIRE 2928 1936 2928 1936
            WIRE 2928 1936 3296 1936
            BEGIN DISPLAY 2936 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 1488 3296 1488
        BEGIN BRANCH alu_xnor(1)
            WIRE 2576 1488 2928 1488
            WIRE 2928 1488 2928 1488
            WIRE 2928 1488 3296 1488
            BEGIN DISPLAY 2936 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3392 1040 3296 1040
        BEGIN BRANCH alu_xnor(0)
            WIRE 2576 1040 2928 1040
            WIRE 2928 1040 2928 1040
            WIRE 2928 1040 3296 1040
            BEGIN DISPLAY 2936 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 3984 3456 3984
        BEGIN BRANCH alu_and(7)
            WIRE 2576 3984 3008 3984
            WIRE 3008 3984 3008 3984
            WIRE 3008 3984 3456 3984
            BEGIN DISPLAY 3016 3984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 3536 3456 3536
        BEGIN BRANCH alu_and(6)
            WIRE 2576 3536 3008 3536
            WIRE 3008 3536 3008 3536
            WIRE 3008 3536 3456 3536
            BEGIN DISPLAY 3016 3536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 3104 3456 3104
        BEGIN BRANCH alu_and(5)
            WIRE 2576 3104 3008 3104
            WIRE 3008 3104 3008 3104
            WIRE 3008 3104 3456 3104
            BEGIN DISPLAY 3016 3104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 2640 3456 2640
        BEGIN BRANCH alu_and(4)
            WIRE 2576 2640 3008 2640
            WIRE 3008 2640 3008 2640
            WIRE 3008 2640 3456 2640
            BEGIN DISPLAY 3016 2640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 2176 3456 2176
        BEGIN BRANCH alu_and(3)
            WIRE 2576 2176 3008 2176
            WIRE 3008 2176 3008 2176
            WIRE 3008 2176 3456 2176
            BEGIN DISPLAY 3016 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 1744 3456 1744
        BEGIN BRANCH alu_and(2)
            WIRE 2576 1744 3008 1744
            WIRE 3008 1744 3008 1744
            WIRE 3008 1744 3456 1744
            BEGIN DISPLAY 3016 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 1296 3456 1296
        BEGIN BRANCH alu_and(1)
            WIRE 2576 1296 3008 1296
            WIRE 3008 1296 3008 1296
            WIRE 3008 1296 3456 1296
            BEGIN DISPLAY 3016 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3552 848 3456 848
        BEGIN BRANCH alu_and(0)
            WIRE 2576 848 3008 848
            WIRE 3008 848 3008 848
            WIRE 3008 848 3456 848
            BEGIN DISPLAY 3016 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 3856 3696 3856
        BEGIN BRANCH S(7)
            WIRE 2576 3856 3136 3856
            WIRE 3136 3856 3696 3856
            BEGIN DISPLAY 3136 3856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 3408 3696 3408
        BEGIN BRANCH S(6)
            WIRE 2576 3408 3136 3408
            WIRE 3136 3408 3696 3408
            BEGIN DISPLAY 3136 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 2976 3696 2976
        BEGIN BRANCH S(5)
            WIRE 2576 2976 3136 2976
            WIRE 3136 2976 3696 2976
            BEGIN DISPLAY 3136 2976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 2512 3696 2512
        BEGIN BRANCH S(4)
            WIRE 2576 2512 3136 2512
            WIRE 3136 2512 3696 2512
            BEGIN DISPLAY 3136 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 2048 3696 2048
        BEGIN BRANCH S(3)
            WIRE 2576 2048 3136 2048
            WIRE 3136 2048 3696 2048
            BEGIN DISPLAY 3136 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 1616 3696 1616
        BEGIN BRANCH S(2)
            WIRE 2576 1616 3136 1616
            WIRE 3136 1616 3696 1616
            BEGIN DISPLAY 3136 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 1168 3696 1168
        BEGIN BRANCH S(1)
            WIRE 2576 1168 3136 1168
            WIRE 3136 1168 3696 1168
            BEGIN DISPLAY 3136 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3792 720 3696 720
        BEGIN BRANCH S(0)
            WIRE 2576 720 3136 720
            WIRE 3136 720 3696 720
            BEGIN DISPLAY 3136 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 3952 1728 3952
        BEGIN BRANCH B(7)
            WIRE 1728 3952 1952 3952
            WIRE 1952 3952 1952 3952
            WIRE 1952 3952 2192 3952
            BEGIN DISPLAY 1960 3952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 3504 1728 3504
        BEGIN BRANCH B(6)
            WIRE 1728 3504 1952 3504
            WIRE 1952 3504 1952 3504
            WIRE 1952 3504 2192 3504
            BEGIN DISPLAY 1960 3504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 3072 1728 3072
        BEGIN BRANCH B(5)
            WIRE 1728 3072 1952 3072
            WIRE 1952 3072 1952 3072
            WIRE 1952 3072 2192 3072
            BEGIN DISPLAY 1960 3072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 2608 1728 2608
        BEGIN BRANCH B(4)
            WIRE 1728 2608 1952 2608
            WIRE 1952 2608 1952 2608
            WIRE 1952 2608 2192 2608
            BEGIN DISPLAY 1960 2608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 2144 1728 2144
        BEGIN BRANCH B(3)
            WIRE 1728 2144 1952 2144
            WIRE 1952 2144 1952 2144
            WIRE 1952 2144 2192 2144
            BEGIN DISPLAY 1960 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 1712 1728 1712
        BEGIN BRANCH B(2)
            WIRE 1728 1712 1952 1712
            WIRE 1952 1712 1952 1712
            WIRE 1952 1712 2192 1712
            BEGIN DISPLAY 1960 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 1264 1728 1264
        BEGIN BRANCH B(1)
            WIRE 1728 1264 1952 1264
            WIRE 1952 1264 1952 1264
            WIRE 1952 1264 2192 1264
            BEGIN DISPLAY 1960 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 816 1728 816
        BEGIN BRANCH B(0)
            WIRE 1728 816 1952 816
            WIRE 1952 816 1952 816
            WIRE 1952 816 2192 816
            BEGIN DISPLAY 1960 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 3856 1552 3856
        BEGIN BRANCH A(7)
            WIRE 1552 3856 1872 3856
            WIRE 1872 3856 2192 3856
            BEGIN DISPLAY 1872 3856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 2976 1552 2976
        BEGIN BRANCH A(5)
            WIRE 1552 2976 1872 2976
            WIRE 1872 2976 2192 2976
            BEGIN DISPLAY 1872 2976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 2512 1552 2512
        BEGIN BRANCH A(4)
            WIRE 1552 2512 1872 2512
            WIRE 1872 2512 2192 2512
            BEGIN DISPLAY 1872 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 2048 1552 2048
        BEGIN BRANCH A(3)
            WIRE 1552 2048 1872 2048
            WIRE 1872 2048 2192 2048
            BEGIN DISPLAY 1872 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 1616 1552 1616
        BEGIN BRANCH A(2)
            WIRE 1552 1616 1872 1616
            WIRE 1872 1616 2192 1616
            BEGIN DISPLAY 1872 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 1168 1552 1168
        BEGIN BRANCH A(1)
            WIRE 1552 1168 1872 1168
            WIRE 1872 1168 2192 1168
            BEGIN DISPLAY 1872 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 720 1552 720
        BEGIN BRANCH A(0)
            WIRE 1552 720 1872 720
            WIRE 1872 720 2192 720
            BEGIN DISPLAY 1872 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 3408 1552 3408
        BEGIN BRANCH A(6)
            WIRE 1552 3408 1872 3408
            WIRE 1872 3408 2192 3408
            BEGIN DISPLAY 1872 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4352 5088 CO R0 28
        IOMARKER 3952 4480 alu_xnor(7:0) R0 28
        IOMARKER 3664 4752 alu_or(7:0) R0 28
        IOMARKER 4032 4016 S(7:0) R0 28
        IOMARKER 3984 4224 alu_and(7:0) R0 28
        IOMARKER 1312 4384 A(7:0) R180 28
        IOMARKER 1312 4624 B(7:0) R180 28
        IOMARKER 1296 4864 CI R180 28
        INSTANCE XLXI_20 2736 5328 R0
        BEGIN BRANCH Overflow
            WIRE 2992 5232 3264 5232
        END BRANCH
        IOMARKER 3264 5232 Overflow R0 28
    END SHEET
END SCHEMATIC
