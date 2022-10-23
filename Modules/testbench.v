`include "ALU.v"
`include "Control.v"
`include "EXEStage.v"
`include "Hazard.v"
`include "IDStage.v"
`include "IFStage.v"
`include "instructionMem.v"
`include "MasterCircuit.v"
`include "MEMStage.v"
`include "PipelineRegisters.v"
`include "Storage.v"
`include "utility.v"
`include "WBStage.v"
`timescale 1ns/1ns

module TESTBENCH ();
  reg clk,reset;
  PROCESSOR top_module (clk, reset);

  initial begin
    clk=1;
    repeat(5000) #50 clk=1'b1-clk ;
  end

  initial begin
    reset = 1;
    #100
    reset = 0;
  end
endmodule // test
