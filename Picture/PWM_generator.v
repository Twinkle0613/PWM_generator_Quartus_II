module PWM_generator(clk,reset,out);
 
 input wire clk;
 input wire reset;
 output reg out;
 
 reg[17:0] counter;

always@ ( posedge clk, negedge reset )
begin
 if(!reset) 
  begin 
   counter = 0;
   out = 0;
  end 
 else
  begin 
   if(counter <= 20000)
     begin 
      out = 1;
     end 
   else 
     begin
      out = 0;
      if(counter >= 200000)
       counter = 0; 
     end 
  end
   
  counter = counter + 1;
end 

endmodule 