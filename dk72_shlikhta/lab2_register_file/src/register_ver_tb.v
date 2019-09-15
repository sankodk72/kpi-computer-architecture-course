// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Sat Sep 14 15:14:03 2019
`timescale 1ns/1ps



module register_tb;

reg i_CLK_sig;
reg i_ASRST_sig;
reg i_WE_sig;
reg [31:0] i_D_sig;
wire [31:0] o_Q_sig;

register_ver register_ver_tb
(
	.i_CLK(i_CLK_sig) ,	// input  i_CLK_sig
	.i_ASRST(i_ASRST_sig) ,	// input  i_ASRST_sig
	.i_WE(i_WE_sig) ,	// input  i_WE_sig
	.i_D(i_D_sig) ,	// input [31:0] i_D_sig
	.o_Q(o_Q_sig) 	// output [31:0] o_Q_sig
);



initial begin
	i_CLK_sig = 1'b0;
	forever #2 i_CLK_sig = ~i_CLK_sig;
end


initial begin
	i_ASRST_sig = 1'b1;
	i_WE_sig = 1'b1;

	#3 i_ASRST_sig = ~i_ASRST_sig;
	#2 i_ASRST_sig = ~i_ASRST_sig;
end

initial begin 
	i_D_sig = 32'h12345678;
	#20 i_D_sig = 32'habcdef00;
	#60 i_D_sig = 32'hdeadbeef;
end

initial begin
	#100 $stop();
end


endmodule

