VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(0)
        SIGNAL d(1)
        SIGNAL d(2)
        SIGNAL d(3)
        SIGNAL q(2)
        SIGNAL q(1)
        SIGNAL q(0)
        SIGNAL XLXN_8
        SIGNAL q(4)
        SIGNAL d(5)
        SIGNAL q(5)
        SIGNAL d(6)
        SIGNAL q(6)
        SIGNAL d(7)
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL clk
        SIGNAL d(4)
        SIGNAL XLXN_19
        SIGNAL d(7:0)
        SIGNAL q(7:0)
        SIGNAL q(3)
        SIGNAL q(7)
        PORT Input clk
        PORT Input d(7:0)
        PORT Output q(7:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_10 fd
            PIN C clk
            PIN D d(0)
            PIN Q q(0)
        END BLOCK
        BEGIN BLOCK XLXI_11 fd
            PIN C clk
            PIN D d(1)
            PIN Q q(1)
        END BLOCK
        BEGIN BLOCK XLXI_12 fd
            PIN C clk
            PIN D d(2)
            PIN Q q(2)
        END BLOCK
        BEGIN BLOCK XLXI_13 fd
            PIN C clk
            PIN D d(3)
            PIN Q q(3)
        END BLOCK
        BEGIN BLOCK XLXI_14 fd
            PIN C clk
            PIN D d(4)
            PIN Q q(4)
        END BLOCK
        BEGIN BLOCK XLXI_15 fd
            PIN C clk
            PIN D d(5)
            PIN Q q(5)
        END BLOCK
        BEGIN BLOCK XLXI_16 fd
            PIN C clk
            PIN D d(6)
            PIN Q q(6)
        END BLOCK
        BEGIN BLOCK XLXI_17 fd
            PIN C clk
            PIN D d(7)
            PIN Q q(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_10 224 656 R0
        INSTANCE XLXI_11 784 656 R0
        INSTANCE XLXI_12 1296 656 R0
        INSTANCE XLXI_13 1792 656 R0
        BEGIN BRANCH d(0)
            WIRE 192 336 192 400
            WIRE 192 400 224 400
        END BRANCH
        BEGIN BRANCH d(1)
            WIRE 752 336 752 400
            WIRE 752 400 784 400
        END BRANCH
        BEGIN BRANCH d(2)
            WIRE 1248 336 1248 400
            WIRE 1248 400 1296 400
        END BRANCH
        BEGIN BRANCH d(3)
            WIRE 1760 336 1760 400
            WIRE 1760 400 1792 400
        END BRANCH
        BEGIN BRANCH q(2)
            WIRE 1680 400 1712 400
            WIRE 1712 336 1712 400
        END BRANCH
        BEGIN BRANCH q(1)
            WIRE 1168 400 1200 400
            WIRE 1200 336 1200 400
        END BRANCH
        BEGIN BRANCH q(0)
            WIRE 608 400 640 400
            WIRE 640 336 640 400
        END BRANCH
        INSTANCE XLXI_14 224 1040 R0
        INSTANCE XLXI_15 784 1040 R0
        INSTANCE XLXI_16 1296 1040 R0
        INSTANCE XLXI_17 1792 1040 R0
        BEGIN BRANCH q(4)
            WIRE 608 784 640 784
            WIRE 640 720 640 784
        END BRANCH
        BEGIN BRANCH d(5)
            WIRE 736 720 736 784
            WIRE 736 784 784 784
        END BRANCH
        BEGIN BRANCH q(5)
            WIRE 1168 784 1200 784
            WIRE 1200 736 1200 784
        END BRANCH
        BEGIN BRANCH d(6)
            WIRE 1264 736 1264 784
            WIRE 1264 784 1296 784
        END BRANCH
        BEGIN BRANCH q(6)
            WIRE 1680 784 1696 784
            WIRE 1696 736 1696 784
        END BRANCH
        BEGIN BRANCH d(7)
            WIRE 1744 736 1744 784
            WIRE 1744 784 1792 784
        END BRANCH
        BEGIN BRANCH clk
            WIRE 144 528 208 528
            WIRE 208 528 224 528
            WIRE 208 528 208 656
            WIRE 208 656 672 656
            WIRE 672 656 1248 656
            WIRE 1248 656 1248 912
            WIRE 1248 912 1296 912
            WIRE 1248 656 1712 656
            WIRE 1712 656 1760 656
            WIRE 1712 656 1712 912
            WIRE 1712 912 1792 912
            WIRE 672 656 672 912
            WIRE 672 912 784 912
            WIRE 160 656 160 912
            WIRE 160 912 224 912
            WIRE 160 656 208 656
            WIRE 672 528 672 656
            WIRE 672 528 784 528
            WIRE 1248 528 1248 656
            WIRE 1248 528 1296 528
            WIRE 1760 528 1760 656
            WIRE 1760 528 1792 528
        END BRANCH
        BEGIN BRANCH d(4)
            WIRE 192 736 192 784
            WIRE 192 784 224 784
        END BRANCH
        BEGIN BRANCH d(7:0)
            WIRE 304 128 400 128
        END BRANCH
        BEGIN BRANCH q(7:0)
            WIRE 304 192 400 192
        END BRANCH
        IOMARKER 304 128 d(7:0) R180 28
        IOMARKER 304 192 q(7:0) R180 28
        IOMARKER 144 528 clk R180 28
        BEGIN BRANCH q(3)
            WIRE 2176 400 2192 400
            WIRE 2192 336 2192 400
        END BRANCH
        BEGIN BRANCH q(7)
            WIRE 2176 784 2192 784
            WIRE 2192 704 2192 784
        END BRANCH
    END SHEET
END SCHEMATIC
