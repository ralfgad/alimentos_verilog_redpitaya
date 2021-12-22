

`timescale 1ns/1ps

module arco_tangente_tb;

  shortreal count_real,entrada,salida,salida_deseada1,salida_deseada2,salida_deseada3,salida_deseada4,error;
   logic clk,reset;
   logic [31:0] salida_bits;
const real pi= 3.14159265358979323;   
 assign entrada=count_real;
 assign salida=$bitstoshortreal(salida_bits);
   
top_arctan_10_9 UUT (.clk(clk),.num_salida(salida_bits),.enable(1'b1),
.num_entrada($shortrealtobits(count_real)));

 

 initial 
 
 begin 
 clk = 1'b0;
 count_real=-2000.0;
 forever #50  clk = !clk;
 end
         

always @(posedge clk)
begin
   salida_deseada1<=  $atan(entrada)*180/pi; //$tanh(entrada); 
   salida_deseada2<=salida_deseada1; 
   salida_deseada3<=salida_deseada2; 
   salida_deseada4<=salida_deseada3;   

count_real<=count_real+ 0.01;   
end
assign error=salida_deseada4-salida;
endmodule


