`include "controlanddata.v"
//Top Module 
// RTL description of design example (see Fig. 8.11 )
module Design_Example_RTL (A, E, F, Start, clock, reset_b);
// Specify ports of the top-level module of the design
// See block diagram, Fig. 8.10
output [3: 0] A;
output E, F;
input Start, clock, reset_b;
// Instantiate controller and datapath units
Controller_RTL M0 (set_E, clr_E, set_F, clr_A_F, incr_A, A[2], A[3], Start, clock, reset_b);
Datapath_RTL M1 (A, E, F, set_E, clr_E, set_F, clr_A_F, incr_A, clock);
endmodule