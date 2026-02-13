VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ID_RegWrite
        BEGIN SIGNAL XLXN_2
        END SIGNAL
        SIGNAL ID_MemRead
        BEGIN SIGNAL XLXN_4
        END SIGNAL
        SIGNAL ID_MemWrite
        SIGNAL ID_r0data(63:0)
        SIGNAL ID_r1data(63:0)
        SIGNAL ID_waddr(4:0)
        SIGNAL EX_waddr(4:0)
        SIGNAL EX_r1data(63:0)
        SIGNAL EX_r0data(63:0)
        SIGNAL EX_MemWrite
        SIGNAL EX_MemRead
        SIGNAL EX_RegWrite
        SIGNAL clk
        SIGNAL XLXN_16
        PORT Input ID_RegWrite
        PORT Input ID_MemRead
        PORT Input ID_MemWrite
        PORT Input ID_r0data(63:0)
        PORT Input ID_r1data(63:0)
        PORT Input ID_waddr(4:0)
        PORT Output EX_waddr(4:0)
        PORT Output EX_r1data(63:0)
        PORT Output EX_r0data(63:0)
        PORT Output EX_MemWrite
        PORT Output EX_MemRead
        PORT Output EX_RegWrite
        PORT Input clk
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF dff_64b
            TIMESTAMP 2026 2 13 6 37 6
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF dff_5b
            TIMESTAMP 2026 2 13 5 2 30
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_64 fd
            PIN C clk
            PIN D ID_RegWrite
            PIN Q EX_RegWrite
        END BLOCK
        BEGIN BLOCK XLXI_63 fd
            PIN C clk
            PIN D ID_MemRead
            PIN Q EX_MemRead
        END BLOCK
        BEGIN BLOCK XLXI_62 fd
            PIN C clk
            PIN D ID_MemWrite
            PIN Q EX_MemWrite
        END BLOCK
        BEGIN BLOCK XLXI_73 dff_64b
            PIN d(63:0) ID_r0data(63:0)
            PIN clk clk
            PIN q(63:0) EX_r0data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_74 dff_64b
            PIN d(63:0) ID_r1data(63:0)
            PIN clk clk
            PIN q(63:0) EX_r1data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 dff_5b
            PIN clk clk
            PIN d(4:0) ID_waddr(4:0)
            PIN q(4:0) EX_waddr(4:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_64 1264 592 R0
        INSTANCE XLXI_63 1264 912 R0
        INSTANCE XLXI_62 1264 1248 R0
        BEGIN INSTANCE XLXI_13 1264 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_73 1264 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_74 1264 1712 R0
        END INSTANCE
        BEGIN BRANCH ID_RegWrite
            WIRE 1232 336 1264 336
        END BRANCH
        IOMARKER 1232 336 ID_RegWrite R180 28
        BEGIN BRANCH ID_MemRead
            WIRE 1232 656 1264 656
        END BRANCH
        IOMARKER 1232 656 ID_MemRead R180 28
        BEGIN BRANCH ID_MemWrite
            WIRE 1232 992 1264 992
        END BRANCH
        IOMARKER 1232 992 ID_MemWrite R180 28
        BEGIN BRANCH ID_r0data(63:0)
            WIRE 1232 1312 1264 1312
        END BRANCH
        IOMARKER 1232 1312 ID_r0data(63:0) R180 28
        BEGIN BRANCH ID_r1data(63:0)
            WIRE 1232 1616 1264 1616
        END BRANCH
        IOMARKER 1232 1616 ID_r1data(63:0) R180 28
        BEGIN BRANCH ID_waddr(4:0)
            WIRE 1232 1920 1264 1920
        END BRANCH
        IOMARKER 1232 1920 ID_waddr(4:0) R180 28
        BEGIN BRANCH EX_waddr(4:0)
            WIRE 1648 1856 1680 1856
        END BRANCH
        IOMARKER 1680 1856 EX_waddr(4:0) R0 28
        BEGIN BRANCH EX_r1data(63:0)
            WIRE 1648 1616 1680 1616
        END BRANCH
        IOMARKER 1680 1616 EX_r1data(63:0) R0 28
        BEGIN BRANCH EX_r0data(63:0)
            WIRE 1648 1312 1680 1312
        END BRANCH
        IOMARKER 1680 1312 EX_r0data(63:0) R0 28
        BEGIN BRANCH EX_MemWrite
            WIRE 1648 992 1680 992
        END BRANCH
        IOMARKER 1680 992 EX_MemWrite R0 28
        BEGIN BRANCH EX_MemRead
            WIRE 1648 656 1680 656
        END BRANCH
        IOMARKER 1680 656 EX_MemRead R0 28
        BEGIN BRANCH EX_RegWrite
            WIRE 1648 336 1680 336
        END BRANCH
        IOMARKER 1680 336 EX_RegWrite R0 28
        BEGIN BRANCH clk
            WIRE 960 464 1008 464
            WIRE 1008 464 1232 464
            WIRE 1232 464 1264 464
            WIRE 1008 464 1008 784
            WIRE 1008 784 1232 784
            WIRE 1232 784 1264 784
            WIRE 1008 784 1008 1120
            WIRE 1008 1120 1264 1120
            WIRE 1008 1120 1008 1376
            WIRE 1008 1376 1008 1680
            WIRE 1008 1680 1264 1680
            WIRE 1008 1680 1008 1856
            WIRE 1008 1856 1264 1856
            WIRE 1008 1376 1264 1376
        END BRANCH
        IOMARKER 960 464 clk R180 28
    END SHEET
END SCHEMATIC
