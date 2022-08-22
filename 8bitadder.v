module eightbitadder (
input wire [7:0] a,b,
output wire [7:0] sum ,
output wire carry
);
wire carry1,carry2,carr3,carry4,carry5,carry6,carry7;
fulladder u0 (
.a(a[0]),
.b(b[0]),
.c(1'b0),
.sum(sum[0]),
.carry(carry1)
);

fulladder u1 (
.a(a[1]),
.b(b[1]),
.c(carry1),
.sum(sum[1]),
.carry(carry2)
);

fulladder u2 (
.a(a[2]),
.b(b[2]),
.c(carry2),
.sum(sum[2]),
.carry(carry3)
);

fulladder u3 (
.a(a[3]),
.b(b[3]),
.c(carry3),
.sum(sum[3]),
.carry(carry4)
);

fulladder u4 (
.a(a[4]),
.b(b[4]),
.c(carry4),
.sum(sum[4]),
.carry(carry5)
);

fulladder u5 (
.a(a[5]),
.b(b[5]),
.c(carry5),
.sum(sum[5]),
.carry(carry6)
);

fulladder u6 (
.a(a[6]),
.b(b[6]),
.c(carry6),
.sum(sum[6]),
.carry(carry7)
);

fulladder u7 (
.a(a[7]),
.b(b[7]),
.c(carry7),
.sum(sum[7]),
.carry(carry)
);

endmodule