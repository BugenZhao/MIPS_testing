// -------------------------------------------------------
// -- Debug.v - Debug utilities
// -------------------------------------------------------
// Bugen Zhao 2020
// -------------------------------------------------------

`define assert(signal, value) if (signal != value) $warning("ASSERTION FAILED: signal(%08X,%d) != value(%08X)", signal, signal, value);

`define iverilog_init \
        initial begin \
            $dumpfile("wave.vcd"); \
            $dumpvars; \
        end


`define EXAMPLE_ADD     32'h012a4020
`define EXAMPLE_ADDI    32'h21280008
`define EXAMPLE_AND     32'h012a4024
`define EXAMPLE_ANDI    32'h31280008
`define EXAMPLE_SUB     32'h012a4022
`define EXAMPLE_SLL     32'h00094100    // sll	t0,t1,0x4
`define EXAMPLE_SRAV    32'h01494007    // srav t0,t1,t2
`define EXAMPLE_LUI     32'h3c081234    // lui	t0,0x1234
`define EXAMPLE_SLT     32'h0109082a
`define EXAMPLE_BGEZ    32'h050101bb
`define EXAMPLE_BGTZ    32'h1d0001bb
`define EXAMPLE_BEQ     32'h110901bb
`define EXAMPLE_LB      32'h82290378
`define EXAMPLE_LW      32'h8e290378
`define EXAMPLE_J       32'h0803640e
`define EXAMPLE_JR      32'h03e00008
`define EXAMPLE_NOP     32'h00000000
`define EXAMPLE_SB      32'ha2290378
`define EXAMPLE_SH      32'ha6290378
`define EXAMPLE_JAL     32'h0c00048d
`define EXAMPLE_MULT    32'h01090018
`define EXAMPLE_MFLO    32'h00005012


`define memFile u_PipeSystem.u_DataMemory.memFile
`define regFile u_PipeSystem.u_PipeCPU.u_RegisterFile.regFile

`define  wordAt(i) {`memFile[i], `memFile[i+1], `memFile[i+2], `memFile[i+3]}
`define dwordAt(i) {`memFile[i], `memFile[i+1], `memFile[i+2], `memFile[i+3], `memFile[i+4], `memFile[i+5], `memFile[i+6], `memFile[i+7]}
