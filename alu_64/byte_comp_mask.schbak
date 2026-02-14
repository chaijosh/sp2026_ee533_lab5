VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL XLXN_13
        SIGNAL mask
        SIGNAL XLXN_14
        SIGNAL O
        SIGNAL reg_comp
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        PORT Input A(7:0)
        PORT Input mask
        PORT Output O
        PORT Input reg_comp
        BEGIN BLOCKDEF and8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -512 
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -512 64 -512 
            LINE N 64 -336 144 -336 
            LINE N 144 -240 64 -240 
            ARC N 96 -336 192 -240 144 -240 144 -336 
            LINE N 256 -288 192 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
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
        BEGIN BLOCK XLXI_1 and8
            PIN I0 A(0)
            PIN I1 A(1)
            PIN I2 A(2)
            PIN I3 A(3)
            PIN I4 A(4)
            PIN I5 A(5)
            PIN I6 A(6)
            PIN I7 A(7)
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_3 or2b1
            PIN I0 XLXN_23
            PIN I1 XLXN_13
            PIN O O
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 reg_comp
            PIN I1 mask
            PIN O XLXN_23
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 640 640 800 640
            WIRE 800 640 800 672
            WIRE 800 672 800 736
            WIRE 800 736 800 800
            WIRE 800 800 800 864
            WIRE 800 864 800 928
            WIRE 800 928 800 992
            WIRE 800 992 800 1056
            WIRE 800 1056 800 1120
            WIRE 800 1120 800 1200
        END BRANCH
        IOMARKER 640 640 A(7:0) R180 28
        IOMARKER 592 1696 mask R180 28
        INSTANCE XLXI_1 1056 1184 R0
        BUSTAP 800 672 896 672
        BEGIN BRANCH A(7)
            WIRE 896 672 976 672
            WIRE 976 672 1056 672
            BEGIN DISPLAY 976 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 736 896 736
        BEGIN BRANCH A(6)
            WIRE 896 736 976 736
            WIRE 976 736 1056 736
            BEGIN DISPLAY 976 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 800 896 800
        BEGIN BRANCH A(5)
            WIRE 896 800 976 800
            WIRE 976 800 1056 800
            BEGIN DISPLAY 976 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 864 896 864
        BEGIN BRANCH A(4)
            WIRE 896 864 976 864
            WIRE 976 864 1056 864
            BEGIN DISPLAY 976 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 928 896 928
        BEGIN BRANCH A(3)
            WIRE 896 928 976 928
            WIRE 976 928 1056 928
            BEGIN DISPLAY 976 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 992 896 992
        BEGIN BRANCH A(2)
            WIRE 896 992 976 992
            WIRE 976 992 1056 992
            BEGIN DISPLAY 976 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1056 896 1056
        BEGIN BRANCH A(1)
            WIRE 896 1056 976 1056
            WIRE 976 1056 1056 1056
            BEGIN DISPLAY 976 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1120 896 1120
        BEGIN BRANCH A(0)
            WIRE 896 1120 976 1120
            WIRE 976 1120 1056 1120
            BEGIN DISPLAY 976 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mask
            WIRE 592 1696 752 1696
            WIRE 752 1696 1360 1696
            WIRE 1360 1120 1360 1696
            WIRE 1360 1120 1616 1120
        END BRANCH
        BEGIN BRANCH O
            WIRE 2304 1088 3008 1088
            WIRE 3008 672 3024 672
            WIRE 3008 672 3008 1088
        END BRANCH
        IOMARKER 3024 672 O R0 28
        INSTANCE XLXI_3 2048 1184 R0
        BEGIN BRANCH XLXN_13
            WIRE 1312 896 1328 896
            WIRE 1328 896 1328 1056
            WIRE 1328 1056 2048 1056
        END BRANCH
        IOMARKER 544 1920 reg_comp R180 28
        BEGIN BRANCH reg_comp
            WIRE 544 1920 704 1920
            WIRE 704 1184 1616 1184
            WIRE 704 1184 704 1920
        END BRANCH
        INSTANCE XLXI_5 1616 1248 R0
        BEGIN BRANCH XLXN_23
            WIRE 1872 1152 1952 1152
            WIRE 1952 1120 1952 1152
            WIRE 1952 1120 2048 1120
        END BRANCH
    END SHEET
END SCHEMATIC
