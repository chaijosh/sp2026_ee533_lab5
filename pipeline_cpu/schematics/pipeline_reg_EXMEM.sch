VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL EX_RegWrite
        SIGNAL EX_MemRead
        SIGNAL EX_MemWrite
        SIGNAL EX_r0data(63:0)
        SIGNAL EX_r1data(63:0)
        SIGNAL EX_waddr(4:0)
        SIGNAL MEM_waddr(4:0)
        SIGNAL MEM_r1data(63:0)
        SIGNAL MEM_r0data(63:0)
        SIGNAL MEM_MemWrite
        SIGNAL MEM_MemRead
        SIGNAL MEM_RegWrite
        SIGNAL clk
        PORT Input EX_RegWrite
        PORT Input EX_MemRead
        PORT Input EX_MemWrite
        PORT Input EX_r0data(63:0)
        PORT Input EX_r1data(63:0)
        PORT Input EX_waddr(4:0)
        PORT Output MEM_waddr(4:0)
        PORT Output MEM_r1data(63:0)
        PORT Output MEM_r0data(63:0)
        PORT Output MEM_MemWrite
        PORT Output MEM_MemRead
        PORT Output MEM_RegWrite
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
        BEGIN BLOCKDEF dff_5b
            TIMESTAMP 2026 2 13 5 2 30
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCK XLXI_64 fd
            PIN C clk
            PIN D EX_RegWrite
            PIN Q MEM_RegWrite
        END BLOCK
        BEGIN BLOCK XLXI_63 fd
            PIN C clk
            PIN D EX_MemRead
            PIN Q MEM_MemRead
        END BLOCK
        BEGIN BLOCK XLXI_62 fd
            PIN C clk
            PIN D EX_MemWrite
            PIN Q MEM_MemWrite
        END BLOCK
        BEGIN BLOCK XLXI_13 dff_5b
            PIN clk clk
            PIN d(4:0) EX_waddr(4:0)
            PIN q(4:0) MEM_waddr(4:0)
        END BLOCK
        BEGIN BLOCK XLXI_73 dff_64b
            PIN d(63:0) EX_r0data(63:0)
            PIN clk clk
            PIN q(63:0) MEM_r0data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_74 dff_64b
            PIN d(63:0) EX_r1data(63:0)
            PIN clk clk
            PIN q(63:0) MEM_r1data(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH EX_RegWrite
            WIRE 1536 512 1568 512
        END BRANCH
        BEGIN BRANCH EX_MemRead
            WIRE 1536 832 1568 832
        END BRANCH
        BEGIN BRANCH EX_MemWrite
            WIRE 1536 1168 1568 1168
        END BRANCH
        BEGIN BRANCH EX_r0data(63:0)
            WIRE 1536 1488 1568 1488
        END BRANCH
        BEGIN BRANCH EX_r1data(63:0)
            WIRE 1536 1792 1568 1792
        END BRANCH
        BEGIN BRANCH EX_waddr(4:0)
            WIRE 1536 2096 1568 2096
        END BRANCH
        BEGIN BRANCH MEM_waddr(4:0)
            WIRE 1952 2032 1984 2032
        END BRANCH
        BEGIN BRANCH MEM_r1data(63:0)
            WIRE 1952 1792 1984 1792
        END BRANCH
        BEGIN BRANCH MEM_r0data(63:0)
            WIRE 1952 1488 1984 1488
        END BRANCH
        BEGIN BRANCH MEM_MemWrite
            WIRE 1952 1168 1984 1168
        END BRANCH
        BEGIN BRANCH MEM_MemRead
            WIRE 1952 832 1984 832
        END BRANCH
        BEGIN BRANCH MEM_RegWrite
            WIRE 1952 512 1984 512
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1264 640 1312 640
            WIRE 1312 640 1312 960
            WIRE 1312 960 1312 1296
            WIRE 1312 1296 1568 1296
            WIRE 1312 1296 1312 1552
            WIRE 1312 1552 1312 1856
            WIRE 1312 1856 1568 1856
            WIRE 1312 1856 1312 2032
            WIRE 1312 2032 1568 2032
            WIRE 1312 1552 1568 1552
            WIRE 1312 960 1568 960
            WIRE 1312 640 1568 640
        END BRANCH
        INSTANCE XLXI_64 1568 768 R0
        INSTANCE XLXI_63 1568 1088 R0
        INSTANCE XLXI_62 1568 1424 R0
        BEGIN INSTANCE XLXI_13 1568 2128 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_73 1568 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_74 1568 1888 R0
        END INSTANCE
        IOMARKER 1536 512 EX_RegWrite R180 28
        IOMARKER 1536 832 EX_MemRead R180 28
        IOMARKER 1536 1168 EX_MemWrite R180 28
        IOMARKER 1536 1488 EX_r0data(63:0) R180 28
        IOMARKER 1536 1792 EX_r1data(63:0) R180 28
        IOMARKER 1536 2096 EX_waddr(4:0) R180 28
        IOMARKER 1984 2032 MEM_waddr(4:0) R0 28
        IOMARKER 1984 1792 MEM_r1data(63:0) R0 28
        IOMARKER 1984 1488 MEM_r0data(63:0) R0 28
        IOMARKER 1984 1168 MEM_MemWrite R0 28
        IOMARKER 1984 832 MEM_MemRead R0 28
        IOMARKER 1984 512 MEM_RegWrite R0 28
        IOMARKER 1264 640 clk R180 28
    END SHEET
END SCHEMATIC
