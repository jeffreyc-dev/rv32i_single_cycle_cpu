#include "Vrv32i_top.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    Vrv32i_top* top = new Vrv32i_top;

    VerilatedVcdC* tfp = nullptr;
    Verilated::traceEverOn(true);
    tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open("rv32i_top_tb.vcd");

    vluint64_t tick = 0;
    while (!Verilated::gotFinish() && tick < 40010) {
        top->clk = !top->clk;  // toggle clock
        if (tick == 1) top->reset = 0;
        top->eval();
        tfp->dump(tick);
        tick++;
    }

    tfp->close();
    delete top;
    return 0;
}
