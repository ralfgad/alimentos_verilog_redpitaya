module radicador_32_16(
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
input wire	[31:0] X;
output logic	FIN;
output logic	[15:0] COUNT;

enum logic [2:0] {idle,comp,inc,No_inc,finali} state;

logic start;


logic [4:0] Cont;
logic [31:0] a;
logic [15:0] q;
logic [17:0] left,right,r,temp;  

assign start=START;

always_ff @(posedge CLK, negedge RESET)
if (!RESET)
    begin
        left<='0;
        right<='0;
        r<='0;
        q<='0;
        a<='0;
        state<=idle;
        Cont<='0;
    end
else
case (state)
    idle: if (start)
            begin
               // left<='0;
               // right<='0;
                r<='0;
                q<='0;
                a<=X;
                Cont<='0;
                state<=comp;

            end
          else
            state<=idle;

    comp:
        begin
            Cont<=Cont+1;
            right = {q,r[17],1'b1};
            left = {r[15:0],a[31:30]};
            a <= {a[29:0],2'b00};    //left shift by 2 bits.            
            if (r[17] == 1) //add if r is negative
                temp= left + right;
            else    //subtract if r is positive
                temp= left - right;
            r<=temp;
            q <= {q[14:0],!temp[17]};   
            if (Cont==15)
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
assign COUNT=q;
always_comb
case (state)
    finali: FIN=1'b1;
    default: FIN=1'b0;
endcase
endmodule