VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL in(31:0)
        SIGNAL out(31:0)
        PORT Input in(31:0)
        PORT Output out(31:0)
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 2864 352 out(31:0) R0 28
        BEGIN BRANCH out(31:0)
            WIRE 2720 352 2864 352
            WIRE 2720 352 2720 1808
        END BRANCH
        IOMARKER 624 400 in(31:0) R180 28
        BEGIN BRANCH in(31:0)
            WIRE 624 400 800 400
            WIRE 800 400 800 1584
            WIRE 800 1584 800 1792
        END BRANCH
    END SHEET
END SCHEMATIC
