module pc(
input wire clk,reset,
input  [31:0] pc_in ,
output reg [31:0] pc
);

always @(posedge clk ,negedge reset )
    begin 
        if (!reset)
            begin 
                pc   <=32'h00000000;
            end
        else
            begin
                pc<=pc_in;

            end 
    end
endmodule

