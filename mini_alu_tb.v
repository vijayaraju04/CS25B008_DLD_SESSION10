`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2026 07:27:49 PM
// Design Name: 
// Module Name: mini_alu_tb
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

module mini_alu_tb;

reg [5:0] A;
reg [5:0] B;
reg [2:0] sel;

wire [5:0] result;
wire [1:0] compare;
wire valid;

mini_alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .compare(compare),
    .valid(valid)
);

initial
begin

    // Addition
    A = 10;
    B = 20;
    sel = 3'b000;
    #10;

    // Subtraction
    A = 30;
    B = 10;
    sel = 3'b001;
    #10;

    // AND
    A = 42;
    B = 51;
    sel = 3'b010;
    #10;

    // OR
    A = 42;
    B = 51;
    sel = 3'b011;
    #10;

    // NOT
    A = 10;
    B = 20;
    sel = 3'b100;
    #10;

    // Multiplication
    A = 5;
    B = 6;
    sel = 3'b101;
    #10;

    // Comparator: A > B
    A = 20;
    B = 10;
    sel = 3'b110;
    #10;

    // Comparator: A < B
    A = 10;
    B = 20;
    sel = 3'b110;
    #10;

    // Comparator: A = B
    A = 15;
    B = 15;
    sel = 3'b110;
    #10;

    // Overflow test
    A = 40;
    B = 30;
    sel = 3'b000;
    #10;

    $finish;

end

endmodule