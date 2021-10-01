module tris32(out, in, sel);
	input [31:0] in [0:1];
	input [31:0] sel;
	output [31:0] out [0:1];
	
	tri_32bit tri_0(out[0], in[0], sel[0]);
	tri_32bit tri_1(out[1], in[1], sel[1]);
	
endmodule