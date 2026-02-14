VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ALUOp(3:0)
        SIGNAL alu_shift_out
        SIGNAL alu_and
        SIGNAL alu_xnor
        SIGNAL alu_or
        SIGNAL sub
        SIGNAL alu_comp
        SIGNAL alu_shiftA
        SIGNAL alu_shiftB
        SIGNAL ALUOp(0)
        SIGNAL ALUOp(1)
        SIGNAL ALUOp(2)
        SIGNAL ALUOp(3)
        SIGNAL substr_comp
        PORT Input ALUOp(3:0)
        PORT Output alu_shift_out
        PORT Output alu_and
        PORT Output alu_xnor
        PORT Output alu_or
        PORT Output sub
        PORT Output alu_comp
        PORT Output alu_shiftA
        PORT Output alu_shiftB
        PORT Output substr_comp
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 and3b1
            PIN I0 ALUOp(3)
            PIN I1 ALUOp(2)
            PIN I2 ALUOp(1)
            PIN O alu_shift_out
        END BLOCK
        BEGIN BLOCK XLXI_7 and4b2
            PIN I0 ALUOp(2)
            PIN I1 ALUOp(1)
            PIN I2 ALUOp(3)
            PIN I3 ALUOp(0)
            PIN O alu_and
        END BLOCK
        BEGIN BLOCK XLXI_6 and4b3
            PIN I0 ALUOp(0)
            PIN I1 ALUOp(1)
            PIN I2 ALUOp(2)
            PIN I3 ALUOp(3)
            PIN O alu_xnor
        END BLOCK
        BEGIN BLOCK XLXI_9 and4b2
            PIN I0 ALUOp(3)
            PIN I1 ALUOp(1)
            PIN I2 ALUOp(2)
            PIN I3 ALUOp(0)
            PIN O alu_or
        END BLOCK
        BEGIN BLOCK XLXI_4 and4b3
            PIN I0 ALUOp(3)
            PIN I1 ALUOp(2)
            PIN I2 ALUOp(1)
            PIN I3 ALUOp(0)
            PIN O sub
        END BLOCK
        BEGIN BLOCK XLXI_11 gnd
            PIN G alu_shiftA
        END BLOCK
        BEGIN BLOCK XLXI_12 and3b2
            PIN I0 ALUOp(3)
            PIN I1 ALUOp(2)
            PIN I2 ALUOp(1)
            PIN O alu_comp
        END BLOCK
        BEGIN BLOCK XLXI_13 and4b2
            PIN I0 ALUOp(3)
            PIN I1 ALUOp(2)
            PIN I2 ALUOp(1)
            PIN I3 ALUOp(0)
            PIN O alu_shiftB
        END BLOCK
        BEGIN BLOCK XLXI_14 and4b3
            PIN I0 ALUOp(0)
            PIN I1 ALUOp(1)
            PIN I2 ALUOp(3)
            PIN I3 ALUOp(2)
            PIN O substr_comp
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ALUOp(3:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 ALUOp(3:0) R180 28
        BEGIN BRANCH alu_shift_out
            WIRE 2720 1168 2736 1168
            WIRE 2736 1168 2864 1168
            WIRE 2864 1168 2880 1168
        END BRANCH
        IOMARKER 2880 1168 alu_shift_out R0 28
        INSTANCE XLXI_2 2464 1296 R0
        BEGIN BRANCH alu_and
            WIRE 2720 272 2880 272
        END BRANCH
        IOMARKER 2880 272 alu_and R0 28
        INSTANCE XLXI_7 2464 432 R0
        BEGIN BRANCH alu_xnor
            WIRE 2720 912 2880 912
        END BRANCH
        INSTANCE XLXI_6 2464 1072 R0
        IOMARKER 2880 912 alu_xnor R0 28
        BEGIN BRANCH alu_or
            WIRE 2736 624 2896 624
        END BRANCH
        IOMARKER 2896 624 alu_or R0 28
        INSTANCE XLXI_9 2480 784 R0
        BEGIN BRANCH sub
            WIRE 1488 256 1504 256
            WIRE 1504 256 1648 256
        END BRANCH
        INSTANCE XLXI_4 1232 416 R0
        IOMARKER 1648 256 sub R0 28
        BEGIN BRANCH alu_comp
            WIRE 2752 1664 2912 1664
        END BRANCH
        IOMARKER 2912 1664 alu_comp R0 28
        BEGIN BRANCH alu_shiftA
            WIRE 2736 2160 2896 2160
        END BRANCH
        IOMARKER 2896 2160 alu_shiftA R0 28
        INSTANCE XLXI_11 2672 2288 R0
        BEGIN BRANCH alu_shiftB
            WIRE 2736 2496 2896 2496
        END BRANCH
        IOMARKER 2896 2496 alu_shiftB R0 28
        INSTANCE XLXI_12 2496 1792 R0
        INSTANCE XLXI_13 2480 2656 R0
        BEGIN BRANCH ALUOp(0)
            WIRE 1104 160 1168 160
            WIRE 1168 160 1232 160
            BEGIN DISPLAY 1168 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 1104 224 1152 224
            WIRE 1152 224 1232 224
            BEGIN DISPLAY 1152 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 1104 288 1168 288
            WIRE 1168 288 1232 288
            BEGIN DISPLAY 1168 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 1104 352 1168 352
            WIRE 1168 352 1232 352
            BEGIN DISPLAY 1168 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(0)
            WIRE 2336 176 2416 176
            WIRE 2416 176 2448 176
            WIRE 2448 176 2464 176
            BEGIN DISPLAY 2416 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 2352 240 2400 240
            WIRE 2400 240 2448 240
            WIRE 2448 240 2464 240
            BEGIN DISPLAY 2400 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 2336 304 2400 304
            WIRE 2400 304 2464 304
            BEGIN DISPLAY 2400 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 2336 368 2384 368
            WIRE 2384 368 2464 368
            BEGIN DISPLAY 2384 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(0)
            WIRE 2352 528 2400 528
            WIRE 2400 528 2480 528
            BEGIN DISPLAY 2400 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 2320 592 2416 592
            WIRE 2416 592 2464 592
            WIRE 2464 592 2480 592
            BEGIN DISPLAY 2416 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 2352 656 2416 656
            WIRE 2416 656 2480 656
            BEGIN DISPLAY 2416 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 2352 720 2416 720
            WIRE 2416 720 2480 720
            BEGIN DISPLAY 2416 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 2352 816 2352 832
            WIRE 2352 816 2448 816
            WIRE 2448 816 2464 816
            BEGIN DISPLAY 2448 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 2320 864 2320 880
            WIRE 2320 880 2432 880
            WIRE 2432 880 2464 880
            BEGIN DISPLAY 2432 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 2288 944 2416 944
            WIRE 2416 944 2464 944
            BEGIN DISPLAY 2416 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(0)
            WIRE 2304 1008 2448 1008
            WIRE 2448 1008 2464 1008
            BEGIN DISPLAY 2448 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 2320 1104 2432 1104
            WIRE 2432 1104 2464 1104
            BEGIN DISPLAY 2432 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 2336 1168 2432 1168
            WIRE 2432 1168 2464 1168
            BEGIN DISPLAY 2432 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 2320 1232 2432 1232
            WIRE 2432 1232 2464 1232
            BEGIN DISPLAY 2432 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 2320 1600 2432 1600
            WIRE 2432 1600 2496 1600
            BEGIN DISPLAY 2432 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 2304 1664 2432 1664
            WIRE 2432 1664 2496 1664
            BEGIN DISPLAY 2432 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 2320 1728 2432 1728
            WIRE 2432 1728 2496 1728
            BEGIN DISPLAY 2432 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 2224 2592 2224 2608
            WIRE 2224 2592 2432 2592
            WIRE 2432 2592 2480 2592
            BEGIN DISPLAY 2432 2592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 2272 2528 2400 2528
            WIRE 2400 2528 2480 2528
            BEGIN DISPLAY 2400 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 2272 2464 2384 2464
            WIRE 2384 2464 2480 2464
            BEGIN DISPLAY 2384 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(0)
            WIRE 2288 2400 2352 2400
            WIRE 2352 2400 2480 2400
            BEGIN DISPLAY 2352 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH substr_comp
            WIRE 1520 736 1712 736
        END BRANCH
        IOMARKER 1712 736 substr_comp R0 28
        INSTANCE XLXI_14 1264 896 R0
        BEGIN BRANCH ALUOp(0)
            WIRE 1120 832 1248 832
            WIRE 1248 832 1264 832
            BEGIN DISPLAY 1248 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(1)
            WIRE 1152 768 1232 768
            WIRE 1232 768 1264 768
            BEGIN DISPLAY 1232 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(3)
            WIRE 1152 704 1232 704
            WIRE 1232 704 1264 704
            BEGIN DISPLAY 1232 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOp(2)
            WIRE 1120 640 1120 656
            WIRE 1120 640 1216 640
            WIRE 1216 640 1264 640
            BEGIN DISPLAY 1216 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
