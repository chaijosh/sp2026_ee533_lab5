VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL rst
        SIGNAL clk
        SIGNAL XLXN_7
        SIGNAL pc_in(0)
        SIGNAL pc_in(8:1)
        SIGNAL pc_in(8:0)
        SIGNAL pc_out(8:1)
        SIGNAL pc_out(0)
        SIGNAL pc_out(8:0)
        PORT Input rst
        PORT Input clk
        PORT Input pc_in(8:0)
        PORT Output pc_out(8:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE XLXN_7
            PIN CLR rst
            PIN D(7:0) pc_in(8:1)
            PIN Q(7:0) pc_out(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_2 fdce
            PIN C clk
            PIN CE XLXN_7
            PIN CLR rst
            PIN D pc_in(0)
            PIN Q pc_out(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 vcc
            PIN P XLXN_7
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1296 896 R0
        INSTANCE XLXI_2 1296 1280 R0
        BEGIN BRANCH rst
            WIRE 816 864 1264 864
            WIRE 1264 864 1264 1248
            WIRE 1264 1248 1296 1248
            WIRE 1264 864 1296 864
        END BRANCH
        BEGIN BRANCH clk
            WIRE 816 768 1216 768
            WIRE 1216 768 1216 1152
            WIRE 1216 1152 1296 1152
            WIRE 1216 768 1296 768
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1152 560 1152 704
            WIRE 1152 704 1152 1088
            WIRE 1152 1088 1296 1088
            WIRE 1152 704 1296 704
        END BRANCH
        BEGIN BRANCH pc_in(0)
            WIRE 976 1024 992 1024
            WIRE 992 1024 1040 1024
            WIRE 1040 1024 1056 1024
            WIRE 1056 1024 1296 1024
            BEGIN DISPLAY 992 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_in(8:1)
            WIRE 976 640 1024 640
            WIRE 1024 640 1040 640
            WIRE 1040 640 1296 640
            BEGIN DISPLAY 1024 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_in(8:0)
            WIRE 832 640 880 640
            WIRE 880 640 880 1024
        END BRANCH
        IOMARKER 832 640 pc_in(8:0) R180 28
        BUSTAP 880 640 976 640
        BUSTAP 880 1024 976 1024
        BEGIN BRANCH pc_out(8:1)
            WIRE 1680 640 1760 640
            WIRE 1760 640 1824 640
            BEGIN DISPLAY 1760 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_out(0)
            WIRE 1680 1024 1712 1024
            WIRE 1712 1024 1760 1024
            WIRE 1760 1024 1824 1024
            BEGIN DISPLAY 1712 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pc_out(8:0)
            WIRE 1920 640 1984 640
            WIRE 1920 640 1920 1024
        END BRANCH
        IOMARKER 1984 640 pc_out(8:0) R0 28
        BUSTAP 1920 640 1824 640
        BUSTAP 1920 1024 1824 1024
        IOMARKER 816 768 clk R180 28
        IOMARKER 816 864 rst R180 28
        INSTANCE XLXI_3 1088 560 R0
    END SHEET
END SCHEMATIC
