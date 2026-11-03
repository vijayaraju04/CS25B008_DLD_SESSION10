`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 08:24:32 AM
// Design Name: 
// Module Name: mini_alu
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


module mini_alu(
  input [5:0] A,
    input [5:0] B,
    input [2:0] sel,

    output reg [5:0] result,
    output reg [1:0] compare,
    output reg valid
);

wire [5:0] add_result;
wire [5:0] sub_result;
wire [5:0] and_result;
wire [5:0] or_result;
wire [5:0] not_result;
wire [5:0] mul_result;

wire add_valid;
wire sub_valid;
wire and_valid;
wire or_valid;
wire not_valid;
wire mul_valid;

wire [1:0] comp_result;


// Connecting all individual modules

alu_add U1(A, B, add_result, add_valid);

alu_sub U2(A, B, sub_result, sub_valid);

alu_and U3(A, B, and_result, and_valid);

alu_or U4(A, B, or_result, or_valid);

alu_not U5(A, not_result, not_valid);

alu_mul U6(A, B, mul_result, mul_valid);

alu_comp U7(A, B, comp_result);


// Output MUX

always @(*)
begin

    result = 6'b000000;
    compare = 2'b11;
    valid = 1'b0;

    case(sel)

        3'b000:
        begin
            result = add_result;
            valid = add_valid;
        end

        3'b001:
        begin
            result = sub_result;
            valid = sub_valid;
        end

        3'b010:
        begin
            result = and_result;
            valid = and_valid;
        end

        3'b011:
        begin
            result = or_result;
            valid = or_valid;
        end

        3'b100:
        begin
            result = not_result;
            valid = not_valid;
        end

        3'b101:
        begin
            result = mul_result;
            valid = mul_valid;
        end

        3'b110:
        begin
            result = 6'b000000;
            compare = comp_result;
            valid = 1'b1;
        end

        default:
        begin
            result = 6'b000000;
            compare = 2'b11;
            valid = 1'b0;
        end

    endcase

end
endmodule
