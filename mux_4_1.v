module mux_4_1(
	input [1:0] sel, //wire type default
	input [3:0] In,
	output reg Y
);

always@(*)
	begin
	case(sel)
		2'b00: Y = In[0];
		2'b01: Y = In[1];
		2'b10: Y = In[2];
		2'b11: Y = In[3];
		default: Y = 1'b0;
	endcase
	end
endmodule
// In = 4'b1010; use this to show the change in the waveform 
// in this the waveform is constant but the output is right
