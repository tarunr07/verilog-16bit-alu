`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 05:36:03 PM
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_alu_main;

    
    reg [15:0] a;
    reg [15:0] b;
    reg [3:0] opc;

    
    wire [31:0] out;
    wire c_out;

    
    alu_main tob (
        .a(a), 
        .b(b), 
        .opc(opc), 
        .out(out), 
        .c_out(c_out)
    );

    
    initial begin
        
        $monitor("Time=%0t | Op=%b | A=%b B=%b | Out=%b | C_out=%b", 
                 $time, opc, a, b, out, c_out);

        opc = 4'b0000; a = 16'hFFFF; b = 16'h0001; #10;
        
        
        opc = 4'b0001; a = 16'h0005; b = 16'h0003; #10;
        
        
        opc = 4'b0001; a = 16'h0003; b = 16'h0005; #10;

        
        opc = 4'b0010; a = 16'h000A; b = 16'h0000; #10; 

        
        opc = 4'b0011; a = 16'h0001; b = 16'h0000; #10;

        
        opc = 4'b0100; a = 16'h0010; b = 16'h0010; #10;

        
        opc = 4'b0101; a = 16'h0005; b = 16'h000A; #10;
       
        opc = 4'b0101; a = 16'h000A; b = 16'h0005; #10;

        
        opc = 4'b0110; a = 16'h8001; b = 16'h0000; #10;

        
        opc = 4'b0111; a = 16'h0003; b = 16'h0000; #10;

        
        opc = 4'b1000; a = 16'hAAAA; b = 16'h5555; #10;

      
        opc = 4'b1001; a = 16'hAAAA; b = 16'h5555; #10;

       
        opc = 4'b1010; a = 16'hAAAA; b = 16'h5555; #10;

        
        opc = 4'b1011; a = 16'hAAAA; b = 16'h5555; #10;

        
        opc = 4'b1100; a = 16'hAAAA; b = 16'h5555; #10;

        
        opc = 4'b1101; a = 16'hAAAA; b = 16'h5555; #10;

       
        opc = 4'b1110; a = 16'hAAAA; b = 16'h0000; #10;

        
        opc = 4'b1111; a = 16'h1234; b = 16'h0000; #10;

        
        $finish;
    end
endmodule