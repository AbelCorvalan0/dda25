module rca(
    // Define outputs.
    output [2:0] o_sum,
    output         o_c,
    // Define inputs.
    input [2:0] i_a, i_b,
    //input [2:0]    i_a,
    //input [2:0]    i_b,
    input          i_c
);

// Define 2 wires. These will be within the circuit.
wire [1:0]       carry; 

// Module instantiation.
// Module name.
fulladder
    u_fulladder_0(.o_sum(o_sum[0]),
                  .o_c  (carry[0]),
                  .i_a    (i_a[0]),
                  .i_b    (i_b[0]),
                  .i_c      (i_c));
fulladder
    u_fulladder_1(.o_sum(o_sum[1]),
                  .o_c  (carry[1]),
                  .i_a    (i_a[1]),
                  .i_b    (i_b[1]),
                  .i_c  (carry[0]));
fulladder
    u_fulladder_2(.o_sum(o_sum[2]),
                  .o_c       (o_c),
                  .i_a    (i_a[2]),
                  .i_b    (i_b[2]),
                  .i_c  (carry[1]));
endmodule