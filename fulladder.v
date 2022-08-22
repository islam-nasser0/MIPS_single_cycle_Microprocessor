module fulladder (
input wire a,b,c,
output sum,carry 
);

assign sum=a^b^c;
assign carry=(a&b)|(c&a)|(b&c);

endmodule