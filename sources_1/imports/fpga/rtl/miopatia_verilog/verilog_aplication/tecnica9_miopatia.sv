

module tecnica9_miopatia(


      

	//////////// GPIO_0_1, GPIO_0_1 connect to ADA - High Speed ADC/DAC //////////
	output		          		ADC_CLK_A,
	output		          		ADC_CLK_B,
	input 		    [13:0]		ADC_DA,
	input 		    [13:0]		ADC_DB,
	output		          		ADC_OEB_A,
	output		          		ADC_OEB_B,
	input 		          		ADC_OTR_A,
	input 		          		ADC_OTR_B,
	output		          		DAC_CLK_A,
	output		          		DAC_CLK_B,
	output	logic	    [13:0]		DAC_DA,
	output		    [13:0]		DAC_DB,
	output		          		DAC_MODE,
	output		          		DAC_WRT_A,
	output		          		DAC_WRT_B,
	input 		          		OSC_SMA_ADC4,
	output		          		POWER_ON,
	input 		          		SMA_DAC4

);


//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  REG/WIRE declarations
//=======================================================
assign  DAC_WRT_B = ~CLK_125;      //Input write signal for PORT B
assign  DAC_WRT_A = ~CLK_125;      //Input write signal for PORT A

assign  DAC_MODE = 1; 		       //Mode Select. 1 = dual port, 0 = interleaved.

assign  DAC_CLK_B = ~CLK_125; 	    //PLL Clock to DAC_B
assign  DAC_CLK_A = ~CLK_125; 	    //PLL Clock to DAC_A
 
assign  ADC_CLK_B = ~CLK_65;  	    //PLL Clock to ADC_B
assign  ADC_CLK_A = ~CLK_65;  	    //PLL Clock to ADC_A


assign  ADC_OEB_A = 0; 		  	    //ADC_OEA
assign  ADC_OEB_B = 0; 			    //ADC_OEB

/////////////////////////////////////


wire    [13:0]	sin_out;



wire    [31:0]	fase;
wire    [31:0]	modulo, moduloA, moduloB;
wire    [7:0]  direccion;
wire    wren;
wire    [21:0] temp1,temp2;



assign  phasinc1 = 32'd34359738;
assign  phasinc2 = phasinc1<<1;



assign  POWER_ON  = 1;            //Disable OSC_SMA

reg		 [13:0]		r_ADC_DA/*synthesis noprune*/;
reg	signed	 [13:0]		r_ADC_DB/*synthesis noprune*/;
reg		 [13:0]		r_DAC_DA/*synthesis noprune*/;

reg       [13:0]     ADC_DA_reg, ADC_DA_reg2;
reg       [13:0]     ADC_DB_reg, ADC_DB_reg2;
//reg		 [13:0]		r_DAC_DB/*synthesis noprune*/;

/*
assign temp1=(ADC_DA-13'd6702)*8'b01011011;
assign temp2=(ADC_DB-13'd6702)*8'b01011011;

always @ (posedge CLK_65) r_ADC_DA <= 2*temp1[18:6]-13'd4096;
always @ (posedge CLK_65) r_ADC_DB <= 2*temp2[18:6]-13'd4096;





*/


//sincronizadores

always_ff @(posedge CLK_125 )
	begin
			ADC_DA_reg<=ADC_DA;
			ADC_DA_reg2<=ADC_DA_reg;
			ADC_DB_reg<=ADC_DB;
			ADC_DB_reg2<=ADC_DB_reg;
			
	end

localparam DESFASE1=20, DESFASE2=30;

localparam [13:0] cero_magnitud='0;

logic [(DESFASE2 -1):0][13:0] auxB;

logic  signed[13:0] LOOP_B_DESFASADO;

always_ff @(posedge CLK_125 or negedge KEY[0])
	if (!KEY[0])
			  auxB<={(DESFASE2){cero_magnitud}};
	else
			auxB<={r_DAC_DA,auxB[DESFASE2-1:1]};

	assign LOOP_B_DESFASADO=auxB[0];

assign temp1=(ADC_DA_reg2-13'd6690)*8'b10101110;
assign temp2=(ADC_DB_reg2-13'd6690)*8'b10101110;

always @ (posedge CLK_125) r_ADC_DA <= temp1[18:6]-13'd4096;
always @ (posedge CLK_125) r_ADC_DB <= SW[1]?({LOOP_B_DESFASADO[13],LOOP_B_DESFASADO[13:1]}): temp2[18:6]-13'd4096;


always @ (posedge CLK_125) r_DAC_DA <= {sin_out[13],sin_out[13:1]};

always @ (posedge CLK_125) DAC_DA <= {sin_out[13],sin_out[13:1]}+13'd4096;









	
Control_path
#(.DATA_WIDTH(32), .ADDR_WIDTH(8), .MAGNITUD_WIDTH(14), .ancho_detector(30),.ciclos(1), .FICHERO_INICIAL("freq_log.dat"))

Ucontrol
(.clk125(CLK_125),
.clk65(CLK_65),
//.test(SW[0]),
.areset_n(KEY[0]),
.start(~KEY[3]),
.ADC_A(r_ADC_DA),
.ADC_B(r_ADC_DB),
.address_mem(direccion),
.fin(),
.fin2(wren),
.DAC_S_registrado(sin_out),
.MODULO(modulo),
.PHASE(fase),
.MODULOA(moduloA),
.MODULOB(moduloB)
);


fases_mem M1(
	.address(direccion),
	.clock(CLK_125),
	.data(fase),
	.wren(wren),
	.q());
	
modulo_mem M2(
	.address(direccion),
	.clock(CLK_125),
	.data(modulo),
	.wren(wren),
	.q());
	




endmodule
