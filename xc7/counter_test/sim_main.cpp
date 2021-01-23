#include "Vcounter.h"
#include "verilated.h"
int main(int argc, char** argv, char** env) {
Verilated::commandArgs(argc, argv);
Vcounter* top = new Vcounter;
while (!Verilated::gotFinish()) { top->eval(); }
	delete top;
	exit(0);
}
