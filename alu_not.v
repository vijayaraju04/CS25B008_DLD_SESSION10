module alu_not(
    input [5:0] A,
    output [5:0] result,
    output valid
);

assign result = ~A;

assign valid = 1'b1;

endmodule