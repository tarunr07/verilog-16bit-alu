This repository contains the Verilog HDL implementation of a 16-bit Arithmetic Logic Unit (ALU). The design supports 16 distinct arithmetic and logical operations, selected via a 4-bit opcode. It is designed to be synthesizable and has been verified using a custom testbench.

This ALU does the following functions:
1. Addition (opc=4'b0000)
2. Subtraction (opc=4'b0001)
3. Increment (opc=4'b0010)
4. Decrement (opc=4'b0011)
5. Multiplication (opc=4'b0100)
6. Less than (<) (opc=4'b0101)
7. Left Shift (opc=4'b0110)
8. Right Shift (opc=4'b0111)
9. AND (opc=4'b1000)
10. OR (opc=4'b1001)
11. XOR (opc=4'b1010)
12. XNOR (opc=4'b1011)
13. NAND (opc=4'b1100)
14. NOR (opc=4'b1101)
15. NOT (opc=4'b1110)
16. BUFFER (opc=4'b1111)

Veriog HDL file is at alu_16bit.srcs/sources_1/new/alu_main.v
Testbench file is at alu_16bit.srcs/sim_1/new/alu_tb.v
