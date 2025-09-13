module rca (
    // Define outputs.
    output [2:0] o_sum,
    output       o_c  ,
    
    // Define bus i_a, i_b.
    //input  [2:0] i_a, i_b,
    input  [2:0] i_a  ,
    input  [2:0] i_b  ,
    input        i_c  ,
  // Declare a 2-bit wide internal wire.  
  wire [1:0]     carry,
  // Module instantiation.
  fulladder
    u_fulladdeer_0

);
// 
endmodule