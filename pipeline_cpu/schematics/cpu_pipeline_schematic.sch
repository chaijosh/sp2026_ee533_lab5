VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_88
        SIGNAL XLXN_87
        SIGNAL WB_wdata(63:0)
        SIGNAL WB_waddr(4:0)
        SIGNAL ID_instruction(15:11)
        SIGNAL XLXN_95(8:0)
        SIGNAL ID_instruction(20:16)
        SIGNAL ID_instruction(25:21)
        SIGNAL IF_instruction(31:0)
        SIGNAL XLXN_9(8:0)
        SIGNAL ID_instruction(26)
        SIGNAL ID_instruction(27)
        SIGNAL clk
        SIGNAL WB_RegWrite
        SIGNAL XLXN_216
        SIGNAL rst
        SIGNAL ID_instruction(31:0)
        SIGNAL MEM_RegWrite
        SIGNAL MEM_r1data(63:0)
        SIGNAL XLXN_215
        SIGNAL MEM_MemWrite
        SIGNAL MEM_r0data(7:0)
        SIGNAL ID_instruction(28)
        SIGNAL XLXN_312(63:0)
        SIGNAL XLXN_313(63:0)
        SIGNAL XLXN_338(63:0)
        SIGNAL MEM_MemRead
        SIGNAL MEM_r0data(63:0)
        SIGNAL MEM_waddr(4:0)
        SIGNAL XLXN_352
        SIGNAL XLXN_353
        SIGNAL XLXN_354
        SIGNAL XLXN_355(63:0)
        SIGNAL XLXN_356(4:0)
        PORT Input clk
        PORT Input rst
        BEGIN BLOCKDEF instr_mem_32x512
            TIMESTAMP 2026 2 13 8 31 59
            RECTANGLE N 32 0 320 272 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 144 32 144 
            LINE N 0 240 32 240 
            BEGIN LINE W 320 48 352 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF PC_reg_9bit
            TIMESTAMP 2026 2 12 17 52 27
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF incrementer_pc
            TIMESTAMP 2026 2 12 17 37 46
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF reg_file_64x32
            TIMESTAMP 2026 2 13 8 36 12
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF data_mem_64_256
            TIMESTAMP 2026 2 13 6 21 21
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
        BEGIN BLOCKDEF dff_5b
            TIMESTAMP 2026 2 13 5 2 30
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF pipeline_reg_IFID
            TIMESTAMP 2026 2 13 17 50 36
            RECTANGLE N 64 -716 332 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -496 0 -496 
            RECTANGLE N 0 -508 64 -484 
            LINE N 332 -352 396 -352 
            RECTANGLE N 332 -364 396 -340 
        END BLOCKDEF
        BEGIN BLOCKDEF pipeline_reg_IDEX
            TIMESTAMP 2026 2 13 18 16 9
            RECTANGLE N 64 -884 448 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -800 0 -800 
            LINE N 64 -448 0 -448 
            RECTANGLE N 0 -460 64 -436 
            LINE N 64 -576 0 -576 
            LINE N 64 -688 0 -688 
            RECTANGLE N 0 -332 64 -308 
            LINE N 64 -320 0 -320 
            LINE N 64 -192 0 -192 
            RECTANGLE N 0 -204 64 -180 
            LINE N 448 -800 512 -800 
            LINE N 448 -688 512 -688 
            LINE N 448 -576 512 -576 
            LINE N 448 -192 512 -192 
            RECTANGLE N 448 -204 512 -180 
            LINE N 448 -448 512 -448 
            RECTANGLE N 448 -460 512 -436 
            LINE N 448 -320 512 -320 
            RECTANGLE N 448 -332 512 -308 
        END BLOCKDEF
        BEGIN BLOCKDEF pipeline_reg_EXMEM
            TIMESTAMP 2026 2 13 18 36 58
            RECTANGLE N 64 -884 464 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -816 0 -816 
            LINE N 64 -688 0 -688 
            RECTANGLE N 0 -444 64 -420 
            LINE N 64 -432 0 -432 
            LINE N 64 -304 0 -304 
            RECTANGLE N 0 -316 64 -292 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -188 64 -164 
            LINE N 464 -816 528 -816 
            LINE N 464 -688 528 -688 
            LINE N 464 -560 528 -560 
            LINE N 464 -176 528 -176 
            RECTANGLE N 464 -188 528 -164 
            LINE N 464 -432 528 -432 
            RECTANGLE N 464 -444 528 -420 
            LINE N 464 -304 528 -304 
            RECTANGLE N 464 -316 528 -292 
            LINE N 64 -560 0 -560 
        END BLOCKDEF
        BEGIN BLOCK XLXI_29 gnd
            PIN G XLXN_88
        END BLOCK
        BEGIN BLOCK XLXI_28 vcc
            PIN P XLXN_87
        END BLOCK
        BEGIN BLOCK register_file reg_file_64x32
            PIN clk clk
            PIN wena WB_RegWrite
            PIN r0addr(4:0) ID_instruction(25:21)
            PIN r1addr(4:0) ID_instruction(20:16)
            PIN waddr(4:0) WB_waddr(4:0)
            PIN wdata(63:0) WB_wdata(63:0)
            PIN r0data(63:0) XLXN_312(63:0)
            PIN r1data(63:0) XLXN_313(63:0)
        END BLOCK
        BEGIN BLOCK ICache_32x512 instr_mem_32x512
            PIN addr(8:0) XLXN_9(8:0)
            PIN din(31:0)
            PIN we XLXN_88
            PIN en XLXN_87
            PIN clk clk
            PIN dout(31:0) IF_instruction(31:0)
        END BLOCK
        BEGIN BLOCK PC_incrementer incrementer_pc
            PIN pc(8:0) XLXN_9(8:0)
            PIN pc_next(8:0) XLXN_95(8:0)
        END BLOCK
        BEGIN BLOCK PC_register PC_reg_9bit
            PIN rst XLXN_216
            PIN clk clk
            PIN pc_in(8:0) XLXN_95(8:0)
            PIN pc_out(8:0) XLXN_9(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_71 inv
            PIN I rst
            PIN O XLXN_216
        END BLOCK
        BEGIN BLOCK pipeline_stage_IF_ID pipeline_reg_IFID
            PIN clk clk
            PIN IF_instruction(31:0) IF_instruction(31:0)
            PIN ID_instruction(31:0) ID_instruction(31:0)
        END BLOCK
        BEGIN BLOCK pipeline_stage_ID_EX pipeline_reg_IDEX
            PIN clk clk
            PIN ID_RegWrite ID_instruction(26)
            PIN ID_r0data(63:0) XLXN_312(63:0)
            PIN ID_MemWrite ID_instruction(28)
            PIN ID_MemRead ID_instruction(27)
            PIN ID_r1data(63:0) XLXN_313(63:0)
            PIN ID_waddr(4:0) ID_instruction(15:11)
            PIN EX_RegWrite XLXN_352
            PIN EX_MemRead XLXN_353
            PIN EX_MemWrite XLXN_354
            PIN EX_waddr(4:0) XLXN_356(4:0)
            PIN EX_r0data(63:0) XLXN_338(63:0)
            PIN EX_r1data(63:0) XLXN_355(63:0)
        END BLOCK
        BEGIN BLOCK pipeline_stage_MEM_WB2 fd
            PIN C clk
            PIN D MEM_RegWrite
            PIN Q WB_RegWrite
        END BLOCK
        BEGIN BLOCK pipeline_stage_MEM_WB1 dff_5b
            PIN clk clk
            PIN d(4:0) MEM_waddr(4:0)
            PIN q(4:0) WB_waddr(4:0)
        END BLOCK
        BEGIN BLOCK DCache_64x256 data_mem_64_256
            PIN addra(7:0) MEM_r0data(7:0)
            PIN dina(63:0) MEM_r1data(63:0)
            PIN wea MEM_MemWrite
            PIN ena XLXN_215
            PIN clka clk
            PIN addrb(7:0)
            PIN dinb(63:0)
            PIN web
            PIN enb
            PIN clkb clk
            PIN douta(63:0) WB_wdata(63:0)
            PIN doutb(63:0)
        END BLOCK
        BEGIN BLOCK pipeline_stage_EX_MEM pipeline_reg_EXMEM
            PIN clk clk
            PIN EX_RegWrite XLXN_352
            PIN EX_MemRead XLXN_353
            PIN EX_r0data(63:0) XLXN_338(63:0)
            PIN EX_r1data(63:0) XLXN_355(63:0)
            PIN EX_waddr(4:0) XLXN_356(4:0)
            PIN MEM_RegWrite MEM_RegWrite
            PIN MEM_MemRead MEM_MemRead
            PIN MEM_MemWrite MEM_MemWrite
            PIN MEM_waddr(4:0) MEM_waddr(4:0)
            PIN MEM_r0data(63:0) MEM_r0data(63:0)
            PIN MEM_r1data(63:0) MEM_r1data(63:0)
            PIN EX_MemWrite XLXN_354
        END BLOCK
        BEGIN BLOCK dcache_write_en or2
            PIN I0 MEM_MemWrite
            PIN I1 MEM_MemRead
            PIN O XLXN_215
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        INSTANCE XLXI_29 1072 2224 R0
        INSTANCE XLXI_28 1296 2128 R180
        BEGIN BRANCH XLXN_88
            WIRE 1136 2096 1344 2096
            WIRE 1344 1904 1376 1904
            WIRE 1344 1904 1344 2096
        END BRANCH
        BEGIN BRANCH XLXN_87
            WIRE 1232 2128 1328 2128
            WIRE 1328 1936 1376 1936
            WIRE 1328 1936 1328 2128
        END BRANCH
        BEGIN BRANCH XLXN_95(8:0)
            WIRE 832 1456 1872 1456
            WIRE 1872 1456 1872 1632
            WIRE 832 1456 832 1968
            WIRE 832 1968 928 1968
            WIRE 1808 1632 1872 1632
        END BRANCH
        BEGIN BRANCH ID_instruction(20:16)
            WIRE 2512 1712 2560 1712
            WIRE 2560 1712 2704 1712
            BEGIN DISPLAY 2560 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE register_file 2704 1872 R0
        END INSTANCE
        BEGIN BRANCH ID_instruction(25:21)
            WIRE 2512 1648 2592 1648
            WIRE 2592 1648 2704 1648
            BEGIN DISPLAY 2592 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE ICache_32x512 1376 1792 R0
        END INSTANCE
        BEGIN INSTANCE PC_incrementer 1424 1664 R0
        END INSTANCE
        BEGIN BRANCH XLXN_9(8:0)
            WIRE 1312 1840 1344 1840
            WIRE 1344 1840 1376 1840
            WIRE 1344 1632 1424 1632
            WIRE 1344 1632 1344 1840
        END BRANCH
        BEGIN INSTANCE PC_register 928 2000 R0
        END INSTANCE
        IOMARKER 800 1904 clk R180 28
        INSTANCE XLXI_71 576 1872 R0
        BEGIN BRANCH rst
            WIRE 544 1840 576 1840
        END BRANCH
        IOMARKER 544 1840 rst R180 28
        BEGIN BRANCH XLXN_216
            WIRE 800 1840 928 1840
        END BRANCH
        BEGIN BRANCH IF_instruction(31:0)
            WIRE 1728 1840 1840 1840
            WIRE 1840 1840 1872 1840
            WIRE 1872 1696 1936 1696
            WIRE 1872 1696 1872 1840
            BEGIN DISPLAY 1840 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2416 1648 2512 1648
        BUSTAP 2416 1712 2512 1712
        BEGIN INSTANCE pipeline_stage_IF_ID 1936 2192 R0
        END INSTANCE
        BEGIN BRANCH ID_instruction(27)
            WIRE 2512 1344 2624 1344
            WIRE 2624 1344 3216 1344
            WIRE 3216 1344 3216 1472
            WIRE 3216 1472 3264 1472
            BEGIN DISPLAY 2624 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_instruction(15:11)
            WIRE 2512 1968 2576 1968
            WIRE 2576 1968 3264 1968
            BEGIN DISPLAY 2576 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_wdata(63:0)
            WIRE 2672 1840 2704 1840
            WIRE 2672 1840 2672 2352
            WIRE 2672 2352 6400 2352
            WIRE 6400 2352 6656 2352
            WIRE 6016 1600 6656 1600
            WIRE 6656 1600 6656 2352
            BEGIN DISPLAY 6400 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_waddr(4:0)
            WIRE 2640 1776 2704 1776
            WIRE 2640 1776 2640 2288
            WIRE 2640 2288 6384 2288
            WIRE 6384 2288 6608 2288
            WIRE 6528 2112 6608 2112
            WIRE 6608 2112 6608 2288
            BEGIN DISPLAY 6384 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM_r0data(7:0)
            WIRE 5456 1600 5632 1600
            WIRE 5632 1600 5728 1600
            BEGIN DISPLAY 5632 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE pipeline_stage_ID_EX 3264 2160 R0
        END INSTANCE
        BEGIN BRANCH ID_instruction(28)
            WIRE 2512 1392 2624 1392
            WIRE 2624 1392 3184 1392
            WIRE 3184 1392 3184 1584
            WIRE 3184 1584 3264 1584
            BEGIN DISPLAY 2624 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_instruction(26)
            WIRE 2512 1296 2624 1296
            WIRE 2624 1296 3248 1296
            WIRE 3248 1296 3248 1360
            WIRE 3248 1360 3264 1360
            BEGIN DISPLAY 2624 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2416 1296 2512 1296
        BUSTAP 2416 1344 2512 1344
        BUSTAP 2416 1392 2512 1392
        BEGIN BRANCH XLXN_312(63:0)
            WIRE 3088 1520 3168 1520
            WIRE 3168 1520 3168 1712
            WIRE 3168 1712 3264 1712
        END BRANCH
        BEGIN BRANCH XLXN_313(63:0)
            WIRE 3088 1840 3264 1840
        END BRANCH
        BUSTAP 2416 1968 2512 1968
        BEGIN BRANCH ID_instruction(31:0)
            WIRE 2336 1840 2368 1840
            WIRE 2368 1840 2416 1840
            WIRE 2416 1840 2416 1968
            WIRE 2416 1296 2416 1344
            WIRE 2416 1344 2416 1392
            WIRE 2416 1392 2416 1648
            WIRE 2416 1648 2416 1712
            WIRE 2416 1712 2416 1840
            BEGIN DISPLAY 2368 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE DCache_64x256 5728 1552 R0
        END INSTANCE
        BEGIN INSTANCE pipeline_stage_MEM_WB1 6144 2208 R0
        END INSTANCE
        BEGIN BRANCH MEM_r1data(63:0)
            WIRE 5104 1840 5232 1840
            WIRE 5232 1840 5552 1840
            WIRE 5552 1632 5728 1632
            WIRE 5552 1632 5552 1840
            BEGIN DISPLAY 5232 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_338(63:0)
            WIRE 3776 1712 4576 1712
        END BRANCH
        BEGIN INSTANCE pipeline_stage_EX_MEM 4576 2144 R0
        END INSTANCE
        BEGIN BRANCH XLXN_215
            WIRE 5632 1488 5712 1488
            WIRE 5712 1488 5712 1696
            WIRE 5712 1696 5728 1696
        END BRANCH
        BEGIN BRANCH MEM_MemWrite
            WIRE 5104 1584 5136 1584
            WIRE 5136 1584 5136 1664
            WIRE 5136 1664 5728 1664
            WIRE 5136 1520 5136 1584
            WIRE 5136 1520 5248 1520
            WIRE 5248 1520 5376 1520
            BEGIN DISPLAY 5248 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM_MemRead
            WIRE 5104 1456 5248 1456
            WIRE 5248 1456 5376 1456
            BEGIN DISPLAY 5248 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE dcache_write_en 5376 1584 R0
        BEGIN BRANCH MEM_r0data(63:0)
            WIRE 5104 1712 5232 1712
            WIRE 5232 1712 5360 1712
            WIRE 5360 1600 5360 1712
            BEGIN DISPLAY 5232 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 5360 1600 5456 1600
        BEGIN BRANCH MEM_waddr(4:0)
            WIRE 5104 1968 5232 1968
            WIRE 5232 1968 5552 1968
            WIRE 5552 1968 5552 2176
            WIRE 5552 2176 6144 2176
            BEGIN DISPLAY 5232 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM_RegWrite
            WIRE 5104 1328 5232 1328
            WIRE 5232 1328 6224 1328
            BEGIN DISPLAY 5232 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE pipeline_stage_MEM_WB2 6224 1584 R0
        BEGIN BRANCH WB_RegWrite
            WIRE 2688 1120 2688 1584
            WIRE 2688 1584 2704 1584
            WIRE 2688 1120 6672 1120
            WIRE 6672 1120 6672 1328
            WIRE 6608 1328 6640 1328
            WIRE 6640 1328 6672 1328
            BEGIN DISPLAY 6640 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_352
            WIRE 3776 1360 4176 1360
            WIRE 4176 1328 4176 1360
            WIRE 4176 1328 4576 1328
        END BRANCH
        BEGIN BRANCH XLXN_353
            WIRE 3776 1472 4176 1472
            WIRE 4176 1456 4176 1472
            WIRE 4176 1456 4576 1456
        END BRANCH
        BEGIN BRANCH XLXN_354
            WIRE 3776 1584 4576 1584
        END BRANCH
        BEGIN BRANCH XLXN_355(63:0)
            WIRE 3776 1840 4576 1840
        END BRANCH
        BEGIN BRANCH XLXN_356(4:0)
            WIRE 3776 1968 4576 1968
        END BRANCH
        BEGIN BRANCH clk
            WIRE 800 1904 880 1904
            WIRE 880 1904 928 1904
            WIRE 880 1904 880 2432
            WIRE 880 2432 1312 2432
            WIRE 1312 2432 1920 2432
            WIRE 1920 2432 2624 2432
            WIRE 2624 2432 3152 2432
            WIRE 3152 2432 3264 2432
            WIRE 3264 2432 4480 2432
            WIRE 4480 2432 5600 2432
            WIRE 5600 2432 6096 2432
            WIRE 1312 2032 1376 2032
            WIRE 1312 2032 1312 2432
            WIRE 1920 2160 1936 2160
            WIRE 1920 2160 1920 2432
            WIRE 2624 1520 2704 1520
            WIRE 2624 1520 2624 2432
            WIRE 3152 2128 3264 2128
            WIRE 3152 2128 3152 2432
            WIRE 4480 2112 4576 2112
            WIRE 4480 2112 4480 2432
            WIRE 5600 1792 5728 1792
            WIRE 5600 1792 5600 2016
            WIRE 5600 2016 5728 2016
            WIRE 5600 2016 5600 2432
            WIRE 6096 1456 6224 1456
            WIRE 6096 1456 6096 2112
            WIRE 6096 2112 6144 2112
            WIRE 6096 2112 6096 2432
        END BRANCH
    END SHEET
END SCHEMATIC
