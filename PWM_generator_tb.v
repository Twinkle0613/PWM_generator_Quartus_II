`timescale 1ns/1ns
   
   
module PWM_generator_tb();

 reg clk;
 reg reset;
 wire out;
 
PWM_generator PWM1(clk,reset,out);

initial 
 begin 
   reset <= 0;
   @(posedge clk);
   @(negedge clk);
   reset <= 1;
 end 
 
 
initial 
  begin 
   clk = 0;
   forever #1 clk = ~clk;
end 


endmodule 