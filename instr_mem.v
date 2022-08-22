module instr_mem (
input [31:0] pc,
output reg [31:0] instr 
);

reg [31:0] mem [0:99]; 
/*
initial
	begin
		$readmemh("Program1.txt",mem);
	end*/
initial $readmemh("Program1.txt",mem);

always @(pc)
    begin 
        instr=mem[pc>>2];
    end 

endmodule
