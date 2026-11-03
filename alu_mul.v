module alu_mul(
    input [5:0] A,
    input [5:0] B,
    output reg [5:0] result,
    output reg valid
);

reg [11:0] product;

always @(*)
begin
    product = A * B;

    result = product[5:0];

    if(product[11:6] == 0)
        valid = 1;
    else
        valid = 0;
end

endmodule