VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL CI
        SIGNAL alu_and(7:0)
        SIGNAL S(7:0)
        SIGNAL alu_or(7:0)
        SIGNAL alu_xnor(7:0)
        SIGNAL CO
        SIGNAL XLXN_135
        SIGNAL XLXN_136
        SIGNAL XLXN_137
        SIGNAL XLXN_138
        SIGNAL XLXN_139
        SIGNAL XLXN_140
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
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input CI
        PORT Output alu_and(7:0)
        PORT Output S(7:0)
        PORT Output alu_or(7:0)
        PORT Output alu_xnor(7:0)
        PORT Output CO
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
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE XLXI_11 1632 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1632 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 1632 1744 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 1632 2176 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1632 2640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 1632 3104 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 1632 3536 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 1632 3984 R0
        END INSTANCE
        BEGIN BRANCH CO
            WIRE 2016 3824 2288 3824
            WIRE 2288 3824 2288 4000
            WIRE 2288 4000 2304 4000
            WIRE 2304 4000 2304 4992
            WIRE 2304 4992 3792 4992
        END BRANCH
        IOMARKER 3792 4992 CO R0 28
        IOMARKER 3392 4384 alu_xnor(7:0) R0 28
        IOMARKER 3104 4656 alu_or(7:0) R0 28
        IOMARKER 3472 3920 S(7:0) R0 28
        IOMARKER 3424 4128 alu_and(7:0) R0 28
        BEGIN BRANCH alu_or(7:0)
            WIRE 2560 336 2560 880
            WIRE 2560 880 2560 1328
            WIRE 2560 1328 2560 1776
            WIRE 2560 1776 2560 2208
            WIRE 2560 2208 2560 2672
            WIRE 2560 2672 2560 3136
            WIRE 2560 3136 2560 3568
            WIRE 2560 3568 2560 4016
            WIRE 2560 4016 2560 4656
            WIRE 2560 4656 3104 4656
        END BRANCH
        BEGIN BRANCH alu_xnor(7:0)
            WIRE 2832 96 2832 944
            WIRE 2832 944 2832 1392
            WIRE 2832 1392 2832 1840
            WIRE 2832 1840 2832 2272
            WIRE 2832 2272 2832 2736
            WIRE 2832 2736 2832 3200
            WIRE 2832 3200 2832 3632
            WIRE 2832 3632 2832 4080
            WIRE 2832 4080 2832 4384
            WIRE 2832 4384 3392 4384
        END BRANCH
        BEGIN BRANCH alu_and(7:0)
            WIRE 2992 96 2992 752
            WIRE 2992 752 2992 1200
            WIRE 2992 1200 2992 1648
            WIRE 2992 1648 2992 2080
            WIRE 2992 2080 2992 2544
            WIRE 2992 2544 2992 3008
            WIRE 2992 3008 2992 3440
            WIRE 2992 3440 2992 3888
            WIRE 2992 3888 2992 4128
            WIRE 2992 4128 3424 4128
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 3232 96 3232 624
            WIRE 3232 624 3232 1072
            WIRE 3232 1072 3232 1520
            WIRE 3232 1520 3232 1952
            WIRE 3232 1952 3232 2416
            WIRE 3232 2416 3232 2880
            WIRE 3232 2880 3232 3312
            WIRE 3232 3312 3232 3760
            WIRE 3232 3760 3232 3920
            WIRE 3232 3920 3472 3920
        END BRANCH
        IOMARKER 752 4288 A(7:0) R180 28
        IOMARKER 752 4528 B(7:0) R180 28
        IOMARKER 736 4768 CI R180 28
        BEGIN BRANCH A(7:0)
            WIRE 752 4288 896 4288
            WIRE 896 96 896 624
            WIRE 896 624 896 1072
            WIRE 896 1072 896 1520
            WIRE 896 1520 896 1952
            WIRE 896 1952 896 2416
            WIRE 896 2416 896 2880
            WIRE 896 2880 896 3312
            WIRE 896 3312 896 3760
            WIRE 896 3760 896 4288
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 752 4528 1072 4528
            WIRE 1056 2512 1056 2976
            WIRE 1056 2976 1072 2976
            WIRE 1072 2976 1072 3408
            WIRE 1072 3408 1072 3856
            WIRE 1072 3856 1072 4528
            WIRE 1056 2512 1072 2512
            WIRE 1072 96 1072 720
            WIRE 1072 720 1072 1168
            WIRE 1072 1168 1072 1616
            WIRE 1072 1616 1072 2048
            WIRE 1072 2048 1072 2512
        END BRANCH
        BEGIN BRANCH CI
            WIRE 736 4768 1520 4768
            WIRE 1520 304 1520 4768
            WIRE 1520 304 1632 304
            WIRE 1552 288 1632 288
            WIRE 1632 288 1632 304
            WIRE 1552 288 1552 816
            WIRE 1552 816 1632 816
        END BRANCH
        BEGIN BRANCH XLXN_135
            WIRE 1568 1264 1632 1264
            WIRE 1568 1264 1568 1472
            WIRE 1568 1472 2096 1472
            WIRE 2016 688 2096 688
            WIRE 2096 688 2096 1472
        END BRANCH
        BEGIN BRANCH XLXN_136
            WIRE 1568 1712 1632 1712
            WIRE 1568 1712 1568 1888
            WIRE 1568 1888 2080 1888
            WIRE 2016 1136 2080 1136
            WIRE 2080 1136 2080 1888
        END BRANCH
        BEGIN BRANCH XLXN_137
            WIRE 1552 2608 1632 2608
            WIRE 1552 2608 1552 2832
            WIRE 1552 2832 2096 2832
            WIRE 2016 2016 2096 2016
            WIRE 2096 2016 2096 2832
        END BRANCH
        BEGIN BRANCH XLXN_138
            WIRE 1568 1904 1568 2144
            WIRE 1568 2144 1632 2144
            WIRE 1568 1904 2064 1904
            WIRE 2016 1584 2064 1584
            WIRE 2064 1584 2064 1904
        END BRANCH
        BEGIN BRANCH XLXN_139
            WIRE 1552 3504 1632 3504
            WIRE 1552 3504 1552 3712
            WIRE 1552 3712 2096 3712
            WIRE 2016 2944 2096 2944
            WIRE 2096 2944 2096 3712
        END BRANCH
        BEGIN BRANCH XLXN_140
            WIRE 1568 3072 1632 3072
            WIRE 1568 3072 1568 3248
            WIRE 1568 3248 2080 3248
            WIRE 2016 2480 2080 2480
            WIRE 2080 2480 2080 3248
        END BRANCH
        BEGIN BRANCH XLXN_141
            WIRE 1568 3696 1568 3952
            WIRE 1568 3952 1632 3952
            WIRE 1568 3696 2080 3696
            WIRE 2016 3376 2080 3376
            WIRE 2080 3376 2080 3696
        END BRANCH
        BUSTAP 2560 4016 2464 4016
        BEGIN BRANCH alu_or(7)
            WIRE 2016 4016 2240 4016
            WIRE 2240 4016 2464 4016
            BEGIN DISPLAY 2240 4016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 3568 2464 3568
        BEGIN BRANCH alu_or(6)
            WIRE 2016 3568 2240 3568
            WIRE 2240 3568 2464 3568
            BEGIN DISPLAY 2240 3568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 3136 2464 3136
        BEGIN BRANCH alu_or(5)
            WIRE 2016 3136 2240 3136
            WIRE 2240 3136 2464 3136
            BEGIN DISPLAY 2240 3136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 2672 2464 2672
        BEGIN BRANCH alu_or(4)
            WIRE 2016 2672 2240 2672
            WIRE 2240 2672 2464 2672
            BEGIN DISPLAY 2240 2672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 2208 2464 2208
        BEGIN BRANCH alu_or(3)
            WIRE 2016 2208 2240 2208
            WIRE 2240 2208 2464 2208
            BEGIN DISPLAY 2240 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 1776 2464 1776
        BEGIN BRANCH alu_or(2)
            WIRE 2016 1776 2240 1776
            WIRE 2240 1776 2464 1776
            BEGIN DISPLAY 2240 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 1328 2464 1328
        BEGIN BRANCH alu_or(1)
            WIRE 2016 1328 2240 1328
            WIRE 2240 1328 2464 1328
            BEGIN DISPLAY 2240 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2560 880 2464 880
        BEGIN BRANCH alu_or(0)
            WIRE 2016 880 2240 880
            WIRE 2240 880 2464 880
            BEGIN DISPLAY 2240 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 4080 2736 4080
        BEGIN BRANCH alu_xnor(7)
            WIRE 2016 4080 2368 4080
            WIRE 2368 4080 2368 4080
            WIRE 2368 4080 2736 4080
            BEGIN DISPLAY 2376 4080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 3632 2736 3632
        BEGIN BRANCH alu_xnor(6)
            WIRE 2016 3632 2368 3632
            WIRE 2368 3632 2368 3632
            WIRE 2368 3632 2736 3632
            BEGIN DISPLAY 2376 3632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 3200 2736 3200
        BEGIN BRANCH alu_xnor(5)
            WIRE 2016 3200 2368 3200
            WIRE 2368 3200 2368 3200
            WIRE 2368 3200 2736 3200
            BEGIN DISPLAY 2376 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 2736 2736 2736
        BEGIN BRANCH alu_xnor(4)
            WIRE 2016 2736 2368 2736
            WIRE 2368 2736 2368 2736
            WIRE 2368 2736 2736 2736
            BEGIN DISPLAY 2376 2736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 2272 2736 2272
        BEGIN BRANCH alu_xnor(3)
            WIRE 2016 2272 2368 2272
            WIRE 2368 2272 2368 2272
            WIRE 2368 2272 2736 2272
            BEGIN DISPLAY 2376 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 1840 2736 1840
        BEGIN BRANCH alu_xnor(2)
            WIRE 2016 1840 2368 1840
            WIRE 2368 1840 2368 1840
            WIRE 2368 1840 2736 1840
            BEGIN DISPLAY 2376 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 1392 2736 1392
        BEGIN BRANCH alu_xnor(1)
            WIRE 2016 1392 2368 1392
            WIRE 2368 1392 2368 1392
            WIRE 2368 1392 2736 1392
            BEGIN DISPLAY 2376 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2832 944 2736 944
        BEGIN BRANCH alu_xnor(0)
            WIRE 2016 944 2368 944
            WIRE 2368 944 2368 944
            WIRE 2368 944 2736 944
            BEGIN DISPLAY 2376 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 3888 2896 3888
        BEGIN BRANCH alu_and(7)
            WIRE 2016 3888 2448 3888
            WIRE 2448 3888 2448 3888
            WIRE 2448 3888 2896 3888
            BEGIN DISPLAY 2456 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 3440 2896 3440
        BEGIN BRANCH alu_and(6)
            WIRE 2016 3440 2448 3440
            WIRE 2448 3440 2448 3440
            WIRE 2448 3440 2896 3440
            BEGIN DISPLAY 2456 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 3008 2896 3008
        BEGIN BRANCH alu_and(5)
            WIRE 2016 3008 2448 3008
            WIRE 2448 3008 2448 3008
            WIRE 2448 3008 2896 3008
            BEGIN DISPLAY 2456 3008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 2544 2896 2544
        BEGIN BRANCH alu_and(4)
            WIRE 2016 2544 2448 2544
            WIRE 2448 2544 2448 2544
            WIRE 2448 2544 2896 2544
            BEGIN DISPLAY 2456 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 2080 2896 2080
        BEGIN BRANCH alu_and(3)
            WIRE 2016 2080 2448 2080
            WIRE 2448 2080 2448 2080
            WIRE 2448 2080 2896 2080
            BEGIN DISPLAY 2456 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 1648 2896 1648
        BEGIN BRANCH alu_and(2)
            WIRE 2016 1648 2448 1648
            WIRE 2448 1648 2448 1648
            WIRE 2448 1648 2896 1648
            BEGIN DISPLAY 2456 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 1200 2896 1200
        BEGIN BRANCH alu_and(1)
            WIRE 2016 1200 2448 1200
            WIRE 2448 1200 2448 1200
            WIRE 2448 1200 2896 1200
            BEGIN DISPLAY 2456 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2992 752 2896 752
        BEGIN BRANCH alu_and(0)
            WIRE 2016 752 2448 752
            WIRE 2448 752 2448 752
            WIRE 2448 752 2896 752
            BEGIN DISPLAY 2456 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 3760 3136 3760
        BEGIN BRANCH S(7)
            WIRE 2016 3760 2576 3760
            WIRE 2576 3760 3136 3760
            BEGIN DISPLAY 2576 3760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 3312 3136 3312
        BEGIN BRANCH S(6)
            WIRE 2016 3312 2576 3312
            WIRE 2576 3312 3136 3312
            BEGIN DISPLAY 2576 3312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 2880 3136 2880
        BEGIN BRANCH S(5)
            WIRE 2016 2880 2576 2880
            WIRE 2576 2880 3136 2880
            BEGIN DISPLAY 2576 2880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 2416 3136 2416
        BEGIN BRANCH S(4)
            WIRE 2016 2416 2576 2416
            WIRE 2576 2416 3136 2416
            BEGIN DISPLAY 2576 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 1952 3136 1952
        BEGIN BRANCH S(3)
            WIRE 2016 1952 2576 1952
            WIRE 2576 1952 3136 1952
            BEGIN DISPLAY 2576 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 1520 3136 1520
        BEGIN BRANCH S(2)
            WIRE 2016 1520 2576 1520
            WIRE 2576 1520 3136 1520
            BEGIN DISPLAY 2576 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 1072 3136 1072
        BEGIN BRANCH S(1)
            WIRE 2016 1072 2576 1072
            WIRE 2576 1072 3136 1072
            BEGIN DISPLAY 2576 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3232 624 3136 624
        BEGIN BRANCH S(0)
            WIRE 2016 624 2576 624
            WIRE 2576 624 3136 624
            BEGIN DISPLAY 2576 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 3856 1168 3856
        BEGIN BRANCH B(7)
            WIRE 1168 3856 1392 3856
            WIRE 1392 3856 1392 3856
            WIRE 1392 3856 1632 3856
            BEGIN DISPLAY 1400 3856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 3408 1168 3408
        BEGIN BRANCH B(6)
            WIRE 1168 3408 1392 3408
            WIRE 1392 3408 1392 3408
            WIRE 1392 3408 1632 3408
            BEGIN DISPLAY 1400 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 2976 1168 2976
        BEGIN BRANCH B(5)
            WIRE 1168 2976 1392 2976
            WIRE 1392 2976 1392 2976
            WIRE 1392 2976 1632 2976
            BEGIN DISPLAY 1400 2976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 2512 1168 2512
        BEGIN BRANCH B(4)
            WIRE 1168 2512 1392 2512
            WIRE 1392 2512 1392 2512
            WIRE 1392 2512 1632 2512
            BEGIN DISPLAY 1400 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 2048 1168 2048
        BEGIN BRANCH B(3)
            WIRE 1168 2048 1392 2048
            WIRE 1392 2048 1392 2048
            WIRE 1392 2048 1632 2048
            BEGIN DISPLAY 1400 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1616 1168 1616
        BEGIN BRANCH B(2)
            WIRE 1168 1616 1392 1616
            WIRE 1392 1616 1392 1616
            WIRE 1392 1616 1632 1616
            BEGIN DISPLAY 1400 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1168 1168 1168
        BEGIN BRANCH B(1)
            WIRE 1168 1168 1392 1168
            WIRE 1392 1168 1392 1168
            WIRE 1392 1168 1632 1168
            BEGIN DISPLAY 1400 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 720 1168 720
        BEGIN BRANCH B(0)
            WIRE 1168 720 1392 720
            WIRE 1392 720 1392 720
            WIRE 1392 720 1632 720
            BEGIN DISPLAY 1400 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 3760 992 3760
        BEGIN BRANCH A(7)
            WIRE 992 3760 1312 3760
            WIRE 1312 3760 1632 3760
            BEGIN DISPLAY 1312 3760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 2880 992 2880
        BEGIN BRANCH A(5)
            WIRE 992 2880 1312 2880
            WIRE 1312 2880 1632 2880
            BEGIN DISPLAY 1312 2880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 2416 992 2416
        BEGIN BRANCH A(4)
            WIRE 992 2416 1312 2416
            WIRE 1312 2416 1632 2416
            BEGIN DISPLAY 1312 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 1952 992 1952
        BEGIN BRANCH A(3)
            WIRE 992 1952 1312 1952
            WIRE 1312 1952 1632 1952
            BEGIN DISPLAY 1312 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 1520 992 1520
        BEGIN BRANCH A(2)
            WIRE 992 1520 1312 1520
            WIRE 1312 1520 1632 1520
            BEGIN DISPLAY 1312 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 1072 992 1072
        BEGIN BRANCH A(1)
            WIRE 992 1072 1312 1072
            WIRE 1312 1072 1632 1072
            BEGIN DISPLAY 1312 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 624 992 624
        BEGIN BRANCH A(0)
            WIRE 992 624 1312 624
            WIRE 1312 624 1632 624
            BEGIN DISPLAY 1312 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 3312 992 3312
        BEGIN BRANCH A(6)
            WIRE 992 3312 1312 3312
            WIRE 1312 3312 1632 3312
            BEGIN DISPLAY 1312 3312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
