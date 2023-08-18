module seq_det(clk,rst,data,op);
  input clk,rst,data;
  output reg op;
  parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
  reg [2:0] state;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        state<=s0;
      else
        begin
          case(state)
            s0:state<=data?s1:s0;
            s1:state<=data?s2:s0;
            s2:state<=data?s2:s3;
            s3:state<=data?s4:s0;
            s4:state<=data?s5:s0;
            s5:state<=data?s2:s3;
          endcase
        end
    end
  always@(state)
    begin
      op<=(state==s5);
    end
endmodule
