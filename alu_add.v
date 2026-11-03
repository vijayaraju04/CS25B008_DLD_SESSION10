module alu_add(
    input [5:0] A,
    input [5:0] B,
    output reg [5:0] result,
    output reg valid
);

reg [6:0] sum;

always @(*) 
begin
    sum = A + B;

    result = sum[5:0];

    if(sum[6] == 0)
        valid = 1;
    else
        valid = 0;
end

endmodule
