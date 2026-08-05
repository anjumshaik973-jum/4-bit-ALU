module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] result;
wire carry;


alu_4bit dut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);


initial begin

$dumpfile("alu.vcd");
$dumpvars(0,alu_tb);


A = 4'b1010;
B = 4'b0011;


sel = 3'b000;   // Addition
#10;

sel = 3'b001;   // Subtraction
#10;

sel = 3'b010;   // AND
#10;

sel = 3'b011;   // OR
#10;

sel = 3'b100;   // XOR
#10;


$finish;

end

endmodule
