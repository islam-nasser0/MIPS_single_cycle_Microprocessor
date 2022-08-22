module adder (
input wire [31:0] a,b,
output wire [31:0] c
);

wire carry1,carry2,carry3;

eightbitadder u0(
.a(a[7:0]),
.b(b[7:0]),
.sum(c[7:0]),
.carry(carry1)
);

eightbitadder u1(
.a(a[15:8]),
.b(b[15:8]),
.sum(c[15:8]),
.carry(carry2)
);

eightbitadder u2(
.a(a[23:16]),
.b(b[23:16]),
.sum(c[23:16]),
.carry(carry3)
);

eightbitadder u3(
.a(a[31:24]),
.b(b[31:24]),
.sum(c[31:24]),
.carry(carry)
);


endmodule
