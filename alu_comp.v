module alu_comp(
    input [5:0] A,
    input [5:0] B,
    output reg [1:0] compare
);

always @(*)
begin
    if(A == B)
        compare = 2'b00;
    else if(A > B)
        compare = 2'b01;
    else
        compare = 2'b10;
end

endmodule