VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL addr(7:0)
        SIGNAL write_data(63:0)
        SIGNAL MemWrite
        SIGNAL clk
        SIGNAL read_data(63:0)
        SIGNAL XLXN_18
        SIGNAL MemRead
        SIGNAL XLXN_21
        PORT Input addr(7:0)
        PORT Input write_data(63:0)
        PORT Input MemWrite
        PORT Input clk
        PORT Output read_data(63:0)
        PORT Input MemRead
        BEGIN BLOCKDEF data_mem_64_256
            TIMESTAMP 2026 2 12 4 45 41
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 144 32 144 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            BEGIN LINE W 0 304 32 304 
            END LINE
            LINE N 0 336 32 336 
            LINE N 0 368 32 368 
            LINE N 0 464 32 464 
            BEGIN LINE W 256 48 288 48 
            END LINE
            BEGIN LINE W 256 272 288 272 
            END LINE
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
        BEGIN BLOCK XLXI_2 data_mem_64_256
            PIN addra(7:0) addr(7:0)
            PIN dina(63:0) write_data(63:0)
            PIN wea MemWrite
            PIN ena XLXN_18
            PIN clka clk
            PIN addrb(7:0)
            PIN dinb(63:0)
            PIN web XLXN_21
            PIN enb XLXN_21
            PIN clkb XLXN_21
            PIN douta(63:0) read_data(63:0)
            PIN doutb(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 gnd
            PIN G XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 MemRead
            PIN I1 MemWrite
            PIN O XLXN_18
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 800 400 R0
        END INSTANCE
        BEGIN BRANCH addr(7:0)
            WIRE 416 352 784 352
            WIRE 784 352 784 448
            WIRE 784 448 800 448
        END BRANCH
        BEGIN BRANCH write_data(63:0)
            WIRE 416 400 752 400
            WIRE 752 400 752 480
            WIRE 752 480 800 480
        END BRANCH
        BEGIN BRANCH MemWrite
            WIRE 416 464 480 464
            WIRE 480 464 720 464
            WIRE 720 464 720 512
            WIRE 720 512 800 512
            WIRE 480 464 480 512
            WIRE 480 512 512 512
        END BRANCH
        BEGIN BRANCH clk
            WIRE 416 640 784 640
            WIRE 784 640 800 640
        END BRANCH
        BEGIN BRANCH read_data(63:0)
            WIRE 1088 448 1152 448
        END BRANCH
        IOMARKER 1152 448 read_data(63:0) R0 28
        IOMARKER 416 640 clk R180 28
        IOMARKER 416 400 write_data(63:0) R180 28
        IOMARKER 416 352 addr(7:0) R180 28
        IOMARKER 416 464 MemWrite R180 28
        BEGIN BRANCH XLXN_18
            WIRE 768 544 800 544
        END BRANCH
        INSTANCE XLXI_6 512 640 R0
        BEGIN BRANCH MemRead
            WIRE 416 576 512 576
        END BRANCH
        IOMARKER 416 576 MemRead R180 28
        INSTANCE XLXI_3 656 1008 R0
        BEGIN BRANCH XLXN_21
            WIRE 720 736 800 736
            WIRE 720 736 720 768
            WIRE 720 768 720 864
            WIRE 720 864 720 880
            WIRE 720 864 784 864
            WIRE 784 864 800 864
            WIRE 720 768 800 768
        END BRANCH
    END SHEET
END SCHEMATIC
