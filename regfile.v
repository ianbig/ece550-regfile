module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* register */
	wire [31:0] regOutA [0:31];
	wire [31:0] selW, selA, selEn;
	
	/* write */
	decoder_5to32_32bit decode_write(ctrl_writeReg, selW);
	genvar i;
	generate 
	for(i=0;i<=5'd31;i=i+1) begin: select_and
		and(selEn[i], selW[i], ctrl_writeEnable);
	end
	endgenerate
	
	
	register_32bit reg_0(regOutA[0], data_writeReg, clock, selEn[0], ctrl_reset);
	register_32bit reg_1(regOutA[1], data_writeReg, clock, selEn[1], ctrl_reset);
	register_32bit reg_2(regOutA[2], data_writeReg, clock, selEn[2], ctrl_reset);
	register_32bit reg_3(regOutA[3], data_writeReg, clock, selEn[3], ctrl_reset);
	register_32bit reg_4(regOutA[4], data_writeReg, clock, selEn[4], ctrl_reset);
	register_32bit reg_5(regOutA[5], data_writeReg, clock, selEn[5], ctrl_reset);
	register_32bit reg_6(regOutA[6], data_writeReg, clock, selEn[6], ctrl_reset);
	register_32bit reg_7(regOutA[7], data_writeReg, clock, selEn[7], ctrl_reset);
	register_32bit reg_8(regOutA[8], data_writeReg, clock, selEn[8], ctrl_reset);
	register_32bit reg_9(regOutA[9], data_writeReg, clock, selEn[9], ctrl_reset);
	register_32bit reg_10(regOutA[10], data_writeReg, clock, selEn[10], ctrl_reset);
	register_32bit reg_11(regOutA[11], data_writeReg, clock, selEn[11], ctrl_reset);
	register_32bit reg_12(regOutA[12], data_writeReg, clock, selEn[12], ctrl_reset);
	register_32bit reg_13(regOutA[13], data_writeReg, clock, selEn[13], ctrl_reset);
	register_32bit reg_14(regOutA[14], data_writeReg, clock, selEn[14], ctrl_reset);
	register_32bit reg_15(regOutA[15], data_writeReg, clock, selEn[15], ctrl_reset);
	register_32bit reg_16(regOutA[16], data_writeReg, clock, selEn[16], ctrl_reset);
	register_32bit reg_17(regOutA[17], data_writeReg, clock, selEn[17], ctrl_reset);
	register_32bit reg_18(regOutA[18], data_writeReg, clock, selEn[18], ctrl_reset);
	register_32bit reg_19(regOutA[19], data_writeReg, clock, selEn[19], ctrl_reset);
	register_32bit reg_20(regOutA[20], data_writeReg, clock, selEn[20], ctrl_reset);
	register_32bit reg_21(regOutA[21], data_writeReg, clock, selEn[21], ctrl_reset);
	register_32bit reg_22(regOutA[22], data_writeReg, clock, selEn[22], ctrl_reset);
	register_32bit reg_23(regOutA[23], data_writeReg, clock, selEn[23], ctrl_reset);
	register_32bit reg_24(regOutA[24], data_writeReg, clock, selEn[24], ctrl_reset);
	register_32bit reg_25(regOutA[25], data_writeReg, clock, selEn[25], ctrl_reset);
	register_32bit reg_26(regOutA[26], data_writeReg, clock, selEn[26], ctrl_reset);
	register_32bit reg_27(regOutA[27], data_writeReg, clock, selEn[27], ctrl_reset);
	register_32bit reg_28(regOutA[28], data_writeReg, clock, selEn[28], ctrl_reset);
	register_32bit reg_29(regOutA[29], data_writeReg, clock, selEn[29], ctrl_reset);
	register_32bit reg_30(regOutA[30], data_writeReg, clock, selEn[30], ctrl_reset);
	register_32bit reg_31(regOutA[31], data_writeReg, clock, selEn[31], ctrl_reset);
	
	// Read A
	decoder_5to32_32bit decodeA(ctrl_readRegA, selA);
	
	tri_32bit tri_0(data_readRegA, regOutA[0], selA[0]);
	tri_32bit tri_1(data_readRegA, regOutA[1], selA[1]);
	tri_32bit tri_2(data_readRegA, regOutA[2], selA[2]);
	tri_32bit tri_3(data_readRegA, regOutA[3], selA[3]);
	tri_32bit tri_4(data_readRegA, regOutA[4], selA[4]);
	tri_32bit tri_5(data_readRegA, regOutA[5], selA[5]);
	tri_32bit tri_6(data_readRegA, regOutA[6], selA[6]);
	tri_32bit tri_7(data_readRegA, regOutA[7], selA[7]);
	tri_32bit tri_8(data_readRegA, regOutA[8], selA[8]);
	tri_32bit tri_9(data_readRegA, regOutA[9], selA[9]);
	tri_32bit tri_10(data_readRegA, regOutA[10], selA[10]);
	tri_32bit tri_11(data_readRegA, regOutA[11], selA[11]);
	tri_32bit tri_12(data_readRegA, regOutA[12], selA[12]);
	tri_32bit tri_13(data_readRegA, regOutA[13], selA[13]);
	tri_32bit tri_14(data_readRegA, regOutA[14], selA[14]);
	tri_32bit tri_15(data_readRegA, regOutA[15], selA[15]);
	tri_32bit tri_16(data_readRegA, regOutA[16], selA[16]);
	tri_32bit tri_17(data_readRegA, regOutA[17], selA[17]);
	tri_32bit tri_18(data_readRegA, regOutA[18], selA[18]);
	tri_32bit tri_19(data_readRegA, regOutA[19], selA[19]);
	tri_32bit tri_20(data_readRegA, regOutA[20], selA[20]);
	tri_32bit tri_21(data_readRegA, regOutA[21], selA[21]);
	tri_32bit tri_22(data_readRegA, regOutA[22], selA[22]);
	tri_32bit tri_23(data_readRegA, regOutA[23], selA[23]);
	tri_32bit tri_24(data_readRegA, regOutA[24], selA[24]);
	tri_32bit tri_25(data_readRegA, regOutA[25], selA[25]);
	tri_32bit tri_26(data_readRegA, regOutA[26], selA[26]);
	tri_32bit tri_27(data_readRegA, regOutA[27], selA[27]);
	tri_32bit tri_28(data_readRegA, regOutA[28], selA[28]);
	tri_32bit tri_29(data_readRegA, regOutA[29], selA[29]);
	tri_32bit tri_30(data_readRegA, regOutA[30], selA[30]);
	tri_32bit tri_31(data_readRegA, regOutA[31], selA[31]);


endmodule
