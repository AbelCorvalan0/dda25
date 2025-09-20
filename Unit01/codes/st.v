'define N_LEDS 4
'define NB_SW  4

'timescale 1ns/100ps

module tb_shiftleds();
    
    parameter N_LEDS = 'N_LEDS ;
    parameter NB_SW  = 'NB_SW  ;

    wire [N_LEDS - 1 : 0 ] o_led      ;
    reg  [NB_SW  - 1 : 0 ] i_sw       ;
    reg  [NB_SW  - 1 : 0 ] sw_tmp     ;
    reg  ck_rst, CLK100MHZ            ;

    initial begin
        i_sw = 4'b0000;
        CLK100MHZ = 1'b0;
        ck_rst    = 1'b0;
        #100 ck_rst = 1'b1;
        #100 i_sw   = 4'b0001;
        #1000000 i_sw = 4'b0011;
        #1000000 i_sw = 4'b1011;
        #1000000 $finish;
    end

always #5 CLK100MHZ= ~CLK100MHZ;

tb_shiftleds
    #(.N_LEDS  (N_LEDS)   ,
      .NB_SW   (NB_SW )
    )

u_shiftleds
    (.o_led      (o_led)    ,
     .i_sw       (i_sw)     ,
     .ck_rst     (ck_rst)   ,
     .CLK100MHZ  (CLK100MHZ)
    );

endmodule //tb_shifleds