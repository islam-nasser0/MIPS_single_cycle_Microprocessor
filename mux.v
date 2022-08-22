module mux #(parameter length=32 )(
input [length-1:0]in1,in2,
input sel,
output [length-1:0]out 
);

assign out=(sel)? in2:in1;
endmodule 