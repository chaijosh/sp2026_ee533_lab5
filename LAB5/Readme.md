Lab 5: NetFPGA Processor Interface
This project implements a Pipelined CPU interface on the NetFPGA user datapath. It features:

Dual-Port Memory Interface: Allows software to read/write Instruction and Data memory while the CPU is stalled.

Custom ILA: A register-based debug mechanism (Shadow PC) to freeze execution and inspect processor state.

Perl Driver: A full CLI tool (cpu_control.pl) to load programs, toggle Active Low resets, and verify memory contents.
