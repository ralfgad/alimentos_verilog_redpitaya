module top_arctan_10_9 (
          input [31:0] num_entrada,
          output [31:0] num_salida,
		  input enable,
          input clk
          );


localparam pi_medios= 31'h42B40000;			 
wire [13:0] salida_fix;
reg [12:0] addr;
wire [9:0] q;
wire [31:0] salida_float,num_salida_reg2 ;
reg [31:0]  num_entrada_reg1, num_salida_reg3,num_salida_reg4;
wire [31:0] entrada_reg_pos;
wire idea;
wire [5:0] otra_idea;
wire [30:0] valor;
wire signo=num_entrada_reg1[31];

reg signo_reg,over_reg, signo_reg2,over_reg2;






//float_to_fix  my_float_to_fix(
//                      .num_float(num_entrada),
//                      .signo(signo),
//                      .valor(addr)
//                      );
assign entrada_reg_pos={1'b0,num_entrada_reg1[30:0]};
 Float2Fixed #(.FIXEDSIZE(13)) float2fix (
    .InFloat(entrada_reg_pos),
    .InRadixPoint(6'd4),
    .OutFixed(salida_fix),
	 .OutException(),
	 .OutOverflow(otra_idea)

    ); 

memoria_single_port_mejorado #( .DATA_WIDTH(10), .ADDR_WIDTH(13), .punto_entrada(4), .punto_salida(3) ) my_memory  //forma parte del ciclo 2
						(   
                              .addr(addr),
                              .clk(clk),
                              .q(q)
                              );
								
Fixed2Float #(.FIXEDSIZE(11)) fix2float (
    .InFixed({1'b0,q}),
    .InRadixPoint(6'd3),
    .OutFloat(salida_float)
    ); 								

always @(posedge clk)
begin
signo_reg<=signo; //forma parte del ciclo 2
over_reg<=otra_idea>0; //formaparte del ciclo2
signo_reg2<=signo_reg;//forma parte ciclo 3
over_reg2<=over_reg;//forma parte ciclo3
num_entrada_reg1<=num_entrada;//ciclo 1
addr<=salida_fix[11:0];  //ciclo2
//el ciclo 3 es el de la memoria
num_salida_reg3<=num_salida_reg2;//ciclo 4
num_salida_reg4<=num_salida_reg3; //ciclo5
end	 

assign valor= over_reg2?pi_medios:salida_float[30:0]; //en principio todo est� sincronizado a ciclo 3
assign num_salida_reg2 = {signo_reg2, valor[30:0]};

assign num_salida=num_salida_reg3;       
endmodule