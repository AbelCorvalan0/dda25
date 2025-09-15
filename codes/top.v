/* Advanced Digital Design 2025

Title: top.v 
Description: This HDL code is an example of basics
definitions of modules which involves I/O. 
Author: Corvalan, Abel.

*/

module top(
    // Define output variables.
    output [4:0] o_led  ,
    output [4:0] o_led_b,
    output [4:0] o_led_g,  

    input  [3:0] i_sw   ,
    input        i_reset,
    input        clock  ;
);

/****************************/
// Instances.

count
// Must add an instance name.
u_count(
    .o_valid (),
    .i_sw    (i_sw[2:0]),
    .i_reset (i_reset  ),
    .clock   (clock    )
);

shiftreg
// Must add an instance name.
u_shiftreg(
    .o_led   (),
    .i_valid (), 
    .i_reset (i_reset),
    .clock   (clock  )
);

endmodule