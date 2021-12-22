module radicador_16_8(
	CLK,
	START,
	RESET,
	X,
	FIN,
	COUNT
);


input wire	CLK;
input wire	START;
input wire	RESET;
input wire	[15:0] X;
output logic	FIN;
output logic	[7:0] COUNT;

enum logic [2:0] {idle,comp,inc,No_inc,finali} state;
logic [7:0] Cont;


logic start;
logic [7:0] Sal;
logic [15:0] Reg;
logic [15:0] X_reg;

assign start=START;

always_ff @(posedge CLK, negedge RESET)
if (!RESET)
    begin
        Reg<='0;
        Cont<='0;
        Sal<='0;
        X_reg<='0;
        state<=idle;
    end
else
case (state)
    idle: if (start)
            begin
                Sal<='0;
                Reg<=8'b1;
                X_reg<=X;
                Cont<='0;
                state<=comp;
            end
          else
            state<=idle;

    comp:
        begin
            Cont<=Cont+1;
            if (Reg>X_reg)
                state<=No_inc;
            else
                state<=inc;
        end
    inc:
        begin
            Sal<=Sal+1;
            if (Cont==255)
                state<=finali;
            else
                begin
                    Reg<=(Sal+2)**2;
                    state<=comp;
                end
        end
    No_inc:
        begin
            Sal<=Sal;
            if (Cont==255)
                state<=finali;
            else
                state<=comp;
        end
    finali:
        if (!start)
            state<=idle;  
        else
            state<=finali;     
endcase
assign COUNT=Sal;
always_comb
case (state)
    finali: FIN=1'b1;
    default: FIN=1'b0;
endcase
endmodule