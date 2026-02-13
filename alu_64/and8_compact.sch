VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL in(7:0)
        SIGNAL O
        SIGNAL in(7)
        SIGNAL in(6)
        SIGNAL in(5)
        SIGNAL in(4)
        SIGNAL in(3)
        SIGNAL in(2)
        SIGNAL in(1)
        SIGNAL in(0)
        PORT Input in(7:0)
        PORT Output O
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
        BEGIN BLOCK XLXI_1 and8
            PIN I0 in(0)
            PIN I1 in(1)
            PIN I2 in(2)
            PIN I3 in(3)
            PIN I4 in(4)
            PIN I5 in(5)
            PIN I6 in(6)
            PIN I7 in(7)
            PIN O O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH in(7:0)
            WIRE 640 640 800 640
            WIRE 800 640 800 704
            WIRE 800 704 800 768
            WIRE 800 768 800 832
            WIRE 800 832 800 896
            WIRE 800 896 800 960
            WIRE 800 960 800 1024
            WIRE 800 1024 800 1088
            WIRE 800 1088 800 1152
            WIRE 800 1152 800 1248
        END BRANCH
        IOMARKER 640 640 in(7:0) R180 28
        BEGIN BRANCH O
            WIRE 1216 928 2720 928
            WIRE 2720 640 2880 640
            WIRE 2720 640 2720 928
        END BRANCH
        IOMARKER 2880 640 O R0 28
        INSTANCE XLXI_1 960 1216 R0
        BUSTAP 800 704 896 704
        BEGIN BRANCH in(7)
            WIRE 896 704 928 704
            WIRE 928 704 960 704
            BEGIN DISPLAY 928 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 768 896 768
        BEGIN BRANCH in(6)
            WIRE 896 768 928 768
            WIRE 928 768 960 768
            BEGIN DISPLAY 928 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 832 896 832
        BEGIN BRANCH in(5)
            WIRE 896 832 928 832
            WIRE 928 832 960 832
            BEGIN DISPLAY 928 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 896 896 896
        BEGIN BRANCH in(4)
            WIRE 896 896 928 896
            WIRE 928 896 960 896
            BEGIN DISPLAY 928 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 960 896 960
        BEGIN BRANCH in(3)
            WIRE 896 960 928 960
            WIRE 928 960 960 960
            BEGIN DISPLAY 928 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1024 896 1024
        BEGIN BRANCH in(2)
            WIRE 896 1024 928 1024
            WIRE 928 1024 960 1024
            BEGIN DISPLAY 928 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1088 896 1088
        BEGIN BRANCH in(1)
            WIRE 896 1088 928 1088
            WIRE 928 1088 960 1088
            BEGIN DISPLAY 928 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1152 896 1152
        BEGIN BRANCH in(0)
            WIRE 896 1152 928 1152
            WIRE 928 1152 960 1152
            BEGIN DISPLAY 928 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
