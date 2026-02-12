VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL OP(2:0)
        SIGNAL sub
        SIGNAL shift
        SIGNAL and_in
        SIGNAL xor_in
        SIGNAL OP(1)
        SIGNAL OP(2)
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL OP(0)
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        PORT Input OP(2:0)
        PORT Output sub
        PORT Output shift
        PORT Output and_in
        PORT Output xor_in
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_1 and3
            PIN I0 OP(2)
            PIN I1 OP(1)
            PIN I2 OP(0)
            PIN O xor_in
        END BLOCK
        BEGIN BLOCK XLXI_2 and3b1
            PIN I0 OP(2)
            PIN I1 OP(1)
            PIN I2 OP(0)
            PIN O and_in
        END BLOCK
        BEGIN BLOCK XLXI_4 and3b2
            PIN I0 OP(2)
            PIN I1 OP(1)
            PIN I2 OP(0)
            PIN O shift
        END BLOCK
        BEGIN BLOCK XLXI_7 and3b2
            PIN I0 OP(1)
            PIN I1 OP(0)
            PIN I2 OP(2)
            PIN O sub
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH OP(2:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 OP(2:0) R180 28
        BEGIN BRANCH sub
            WIRE 2336 864 2384 864
            WIRE 2384 864 2400 864
            WIRE 2400 864 2720 864
            WIRE 2720 640 2880 640
            WIRE 2720 640 2720 864
        END BRANCH
        IOMARKER 2880 640 sub R0 28
        BEGIN BRANCH shift
            WIRE 2384 624 2544 624
            WIRE 2544 624 2544 992
            WIRE 2544 992 2720 992
            WIRE 2720 992 2880 992
        END BRANCH
        IOMARKER 2880 992 shift R0 28
        BEGIN BRANCH and_in
            WIRE 2256 1104 2720 1104
            WIRE 2720 1104 2720 1344
            WIRE 2720 1344 2880 1344
        END BRANCH
        IOMARKER 2880 1344 and_in R0 28
        BEGIN BRANCH xor_in
            WIRE 2000 1584 2720 1584
            WIRE 2720 1584 2720 1696
            WIRE 2720 1696 2880 1696
        END BRANCH
        IOMARKER 2880 1696 xor_in R0 28
        BEGIN BRANCH OP(1)
            WIRE 864 1008 960 1008
            WIRE 960 1008 1072 1008
            WIRE 1072 1008 1072 1584
            WIRE 1072 1584 1744 1584
            WIRE 1072 1008 1296 1008
            WIRE 1296 1008 1536 1008
            WIRE 1536 1008 1536 1104
            WIRE 1536 1104 2000 1104
            WIRE 1296 928 2080 928
            WIRE 1296 928 1296 1008
            WIRE 1536 624 2128 624
            WIRE 1536 624 1536 1008
            BEGIN DISPLAY 960 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_1 1744 1712 R0
        INSTANCE XLXI_2 2000 1232 R0
        INSTANCE XLXI_4 2128 752 R0
        BEGIN BRANCH OP(0)
            WIRE 864 896 976 896
            WIRE 976 896 1072 896
            WIRE 1072 896 1104 896
            WIRE 1104 896 1744 896
            WIRE 1744 896 2000 896
            WIRE 2000 896 2000 1040
            WIRE 1744 896 1744 976
            WIRE 1744 976 1744 1520
            WIRE 1104 864 2080 864
            WIRE 1104 864 1104 896
            WIRE 1744 560 2128 560
            WIRE 1744 560 1744 784
            WIRE 1744 784 1744 896
            BEGIN DISPLAY 976 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_7 2080 992 R0
        BEGIN BRANCH OP(2)
            WIRE 864 1136 1008 1136
            WIRE 1008 1136 1088 1136
            WIRE 1088 1136 1088 1648
            WIRE 1088 1648 1744 1648
            WIRE 1088 1136 1232 1136
            WIRE 1232 1136 1280 1136
            WIRE 1280 1136 1344 1136
            WIRE 1344 1136 1440 1136
            WIRE 1440 1136 1536 1136
            WIRE 1536 1136 1536 1168
            WIRE 1536 1168 2000 1168
            WIRE 1440 1136 1440 1152
            WIRE 1440 1152 1520 1152
            WIRE 1232 800 2080 800
            WIRE 1232 800 1232 1136
            WIRE 1520 688 2128 688
            WIRE 1520 688 1520 1152
            BEGIN DISPLAY 1008 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
