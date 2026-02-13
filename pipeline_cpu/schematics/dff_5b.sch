VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL clk
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL d(0)
        SIGNAL d(1)
        SIGNAL q(0)
        SIGNAL q(1)
        SIGNAL d(2)
        SIGNAL q(2)
        SIGNAL d(3)
        SIGNAL q(3)
        SIGNAL q(4)
        SIGNAL d(4)
        SIGNAL d(4:0)
        SIGNAL q(4:0)
        PORT Input clk
        PORT Input d(4:0)
        PORT Output q(4:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D d(0)
            PIN Q q(0)
        END BLOCK
        BEGIN BLOCK XLXI_8 fd
            PIN C clk
            PIN D d(1)
            PIN Q q(1)
        END BLOCK
        BEGIN BLOCK XLXI_9 fd
            PIN C clk
            PIN D d(2)
            PIN Q q(2)
        END BLOCK
        BEGIN BLOCK XLXI_10 fd
            PIN C clk
            PIN D d(3)
            PIN Q q(3)
        END BLOCK
        BEGIN BLOCK XLXI_11 fd
            PIN C clk
            PIN D d(4)
            PIN Q q(4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_7 1168 384 R0
        INSTANCE XLXI_11 1168 1744 R0
        INSTANCE XLXI_10 1168 1392 R0
        INSTANCE XLXI_9 1168 1040 R0
        INSTANCE XLXI_8 1168 704 R0
        BEGIN BRANCH clk
            WIRE 1040 256 1152 256
            WIRE 1152 256 1168 256
            WIRE 1152 256 1152 576
            WIRE 1152 576 1168 576
            WIRE 1152 576 1152 912
            WIRE 1152 912 1168 912
            WIRE 1152 912 1152 1264
            WIRE 1152 1264 1168 1264
            WIRE 1152 1264 1152 1616
            WIRE 1152 1616 1168 1616
        END BRANCH
        BEGIN BRANCH d(0)
            WIRE 960 128 992 128
            WIRE 992 128 1168 128
            BEGIN DISPLAY 992 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(1)
            WIRE 960 448 1168 448
            BEGIN DISPLAY 960 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(0)
            WIRE 1552 128 1584 128
            WIRE 1584 128 1616 128
            BEGIN DISPLAY 1584 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(1)
            WIRE 1552 448 1584 448
            WIRE 1584 448 1616 448
            BEGIN DISPLAY 1584 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(2)
            WIRE 960 784 992 784
            WIRE 992 784 1168 784
            BEGIN DISPLAY 992 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(2)
            WIRE 1552 784 1600 784
            WIRE 1600 784 1616 784
            BEGIN DISPLAY 1600 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(3)
            WIRE 976 1136 992 1136
            WIRE 992 1136 1168 1136
            BEGIN DISPLAY 992 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(3)
            WIRE 1552 1136 1616 1136
            WIRE 1616 1136 1648 1136
            BEGIN DISPLAY 1616 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(4)
            WIRE 1552 1488 1600 1488
            WIRE 1600 1488 1648 1488
            BEGIN DISPLAY 1600 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(4)
            WIRE 1024 1488 1168 1488
            BEGIN DISPLAY 1024 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1040 256 clk R180 28
        BEGIN BRANCH d(4:0)
            WIRE 656 112 752 112
        END BRANCH
        BEGIN BRANCH q(4:0)
            WIRE 1776 128 1888 128
        END BRANCH
        IOMARKER 656 112 d(4:0) R180 28
        IOMARKER 1888 128 q(4:0) R0 28
    END SHEET
END SCHEMATIC
