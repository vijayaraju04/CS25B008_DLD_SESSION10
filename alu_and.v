module alu_and(
    input [5:0] A,
    input [5:0] B,
    output [5:0] result,
    output valid
);

assign result = A & B;

assign valid = 1'b1;

endmodule