module ALU(
    input clk,A,B,
  	input [1:0] ALU_Sel,
    output reg ALU_out
);
  //output register
  reg ALU_Result;
    
  always@(posedge clk)
    begin
     case(ALU_Sel)
        2'b00: // Addition
           ALU_Result = A + B ; 
        2'b01: //Subtraction 
           ALU_Result = A - B;
        2'b10: //Subtraction
           ALU_Result = B - A;
        2'b11: //Multiplication
           ALU_Result = A * B;
        default: ALU_Result = A + B; //Addition
     endcase
    
     ALU_out <= ALU_Result;
    end
endmodule
