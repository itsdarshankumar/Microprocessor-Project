`include "defines.v"

module adder_module (input1, input2, outputfinal);
  input [`MAX_LENGTH-1:0] input1, input2;
  output [`MAX_LENGTH-1:0] outputfinal;

  assign outputfinal = input1 + input2; // adds the given inputs and stores it in outputfinal
endmodule


// 3 types of muxes required are defined here


module mux_32 (input1, input2, selector, outputfinal);
  input selector;
  input [31:0] input1, input2;
  output [31:0] outputfinal;

  assign outputfinal = (selector == 0) ? input1 : input2;
endmodule // mxu

module mux_32_3input (input1, input2, in3, selector, outputfinal);
  input [31:0] input1, input2, in3;
  input [1:0] selector;
  output [31:0] outputfinal;

  assign outputfinal = (selector == 2'd0) ? input1 :
               (selector == 2'd1) ? input2 : in3;
endmodule // mux

module mux_5 (input1, input2, selector, outputfinal);
  input selector;
  input [4:0] input1, input2;
  output [4:0] outputfinal;

  assign outputfinal = (selector == 0) ? input1 : input2;
endmodule // mxu
module REGISTER ( register_inputvalue,clk, reset, write_enabled, register_outputvalue);
  
  input [`MAX_LENGTH-1:0] register_inputvalue;
  input reset, write_enabled,clk ;
  output reg [`MAX_LENGTH-1:0] register_outputvalue;

  // gives register its value passed as input

  always @ (posedge clk) begin
    if (reset) register_outputvalue <= 0;
    else if (write_enabled) register_outputvalue <= register_inputvalue;
  end
endmodule // REGISTER

module SIGNED_EXTENSION (in, outputfinal);
  input [15:0] in;
  output [`MAX_LENGTH-1:0] outputfinal;
  assign outputfinal ={16'b0000000000000000, in};
  // if(in[15:15]==1'b1) begin     assign outputfinal ={16'b1111111111111111, in}; end
  // else begin assign outputfinal ={16'b0000000000000000, in}; end
endmodule // SIGNED_EXTENSION

