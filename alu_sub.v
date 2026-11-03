module alu_sub(
    input [5:0] A,
    input [5:0] B,
    output reg [5:0] result,
    output reg valid
);

reg [6:0] diff;

always @(*)
begin
    diff = {1'b0,A} - {1'b0,B};

    result = diff[5:0];

    if(A >= B)
        valid = 1;
    else
        valid = 0;
end

endmodule