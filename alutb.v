module alutb;
reg [31:0] a,b;
reg[2:0]f;
wire [31:0]y;
alu uut(a,b,f,y);
initial
begin
$dumpfile("alu.vcd");
$dumpvars(0,alutb);
a=32'h1234AB00;
b=32'h4321AB11;
f=3'b000;#10;//ADD
f=3'b001;#10;//SUB
f=3'b011;#10;//DIV
f=3'b100;#10;//AND
f=3'b101;#10;//OR
f=3'b110;#10;//NOT A
f=3'b111;#10;//~(A+B)
a=32'h00001234;
b=32'h00004321;
f=3'b010;#10;
$finish;
end
initial begin
$monitor ("Time=%0t|f=%b|a=%h|b=%h|y=%h",$time,f,a,b,y);
end
endmodule
