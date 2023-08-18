module seq_det_tb;
  reg clk,rst,data;
  wire op;
  
  seq_det s1(clk,rst,data,op);
  initial begin
  forever 
    #5 clk=~clk;
  end
  initial
    begin
    rst=1;
      clk=0;
      data =0;
      $display("Data is %b and op is %b",data,op);
      #40;
      rst=0;
      data =1;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =1;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =0;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =1;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =1;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =0;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =1;
      $display("Data is %b and op is %b",data,op);
      #20;
      data =1;
      $display("Data is %b and op is %b",data,op);
      #20;
      
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
