`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 05:08:07 PM
// Design Name: 
// Module Name: alu_main
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


module alu_main(
    input [15:0] a,b,
    input [3:0] opc,
    output reg [31:0] out,
    output reg c_out

    );

    always @(*) begin

        out=32'b0;
        c_out=1'b0;
        case (opc)

        4'b0000    : begin
            out=a+b;
            c_out=out[16];
        end 

        4'b0001: begin
            out=a-b;
            c_out=(a<b);
        end

        4'b0010: begin
            out=a+1'b1;
            c_out=out[16];

        end

        4'b0011: begin
            out=a-1;
            c_out=(a==0);
        end

        4'b0100: begin
            out=a*b;
            

        end

        4'b0101: begin
            out=(a<b)?32'b1:32'b0;
            c_out=1'b0;
        end

        4'b0110: begin
            out=a<<1;
            c_out=a[15];
        end

        4'b0111: begin
            out=a>>1;
            c_out=a[0];
        end

        4'b1000: out={16'b0,a&b};

        4'b1001: out={16'b0,a|b};

        4'b1010: out={16'b0,a^b};

        4'b1011: out={16'b0,~(a^b)};

        4'b1100: out={16'b0,~(a&b)};

        4'b1101: out={16'b0,~(a|b)};

        4'b1110: out={16'b0,~a};

        4'b1111: out={16'b0,a};

        
        default: begin
            out=32'b0;
            c_out=1'b0;
        end

        endcase
    end
endmodule
