module alu (
input wire [31:0] srcA,srcB,
output reg [31:0] AluResult ,
input wire [2:0] sel,
input wire reset, 
output wire zero
);

always @(*)
    begin 
        if (!reset)
        begin 
            AluResult=32'h00000000;
        end
        else
            begin
                case (sel)
                3'b000:AluResult =srcA & srcB;
                3'b001:AluResult =srcA | srcB;
                3'b010:AluResult =srcA + srcB;
                3'b011:AluResult =32'h00000000 ;//not used
                3'b100:AluResult =srcA - srcB;
                3'b101:AluResult =srcA[15:0] * srcB[15:0];
                3'b110:AluResult =(srcA<srcB)? 1: 0;//stl
                3'b111:AluResult =32'h00000000 ;//not used
                endcase

            end
    end
    
assign zero=(AluResult==0)? 1: 0;

endmodule 
