`timescale 1ns/1ps

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:15:11 08/18/2010
// Design Name:
// Module Name:    alu
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module alu(
           rst_n,         // negative reset            (input)
           src1,          // 32 bits source 1          (input)
           src2,          // 32 bits source 2          (input)
           ALU_control,   // 4 bits ALU control input  (input)
		 //bonus_control, // 3 bits bonus control input(input)
           result,        // 32 bits result            (output)
           zero,          // 1 bit when the output is 0, zero must be set (output)
           cout,          // 1 bit carry out           (output)
           overflow       // 1 bit overflow            (output)
           );


input           rst_n;
input  [32-1:0] src1;
input  [32-1:0] src2;
input   [4-1:0] ALU_control;
//input   [3-1:0] bonus_control;

output [32-1:0] result;
output          zero;
output          cout;
output          overflow;

reg    [32-1:0] result;
reg             zero;
reg             cout;
reg             overflow;


alu_top alu_00(.src1(src1[0]),.src2(src2[0]),.less(less_in),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(((~ALU_control[3])&&ALU_control[2])),.operation(ALU_control[1:0]),.result(temp_result[0]),.cout(temp_cout[0]));
alu_top alu_01(.src1(src1[1]),.src2(src2[1]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[0]),.operation(ALU_control[1:0]),.result(temp_result[1]),.cout(temp_cout[1]));
alu_top alu_02(.src1(src1[2]),.src2(src2[2]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[1]),.operation(ALU_control[1:0]),.result(temp_result[2]),.cout(temp_cout[2]));
alu_top alu_03(.src1(src1[3]),.src2(src2[3]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[2]),.operation(ALU_control[1:0]),.result(temp_result[3]),.cout(temp_cout[3]));
alu_top alu_04(.src1(src1[4]),.src2(src2[4]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[3]),.operation(ALU_control[1:0]),.result(temp_result[4]),.cout(temp_cout[4]));
alu_top alu_05(.src1(src1[5]),.src2(src2[5]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[4]),.operation(ALU_control[1:0]),.result(temp_result[5]),.cout(temp_cout[5]));
alu_top alu_06(.src1(src1[6]),.src2(src2[6]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[5]),.operation(ALU_control[1:0]),.result(temp_result[6]),.cout(temp_cout[6]));
alu_top alu_07(.src1(src1[7]),.src2(src2[7]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[6]),.operation(ALU_control[1:0]),.result(temp_result[7]),.cout(temp_cout[7]));
alu_top alu_08(.src1(src1[8]),.src2(src2[8]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[7]),.operation(ALU_control[1:0]),.result(temp_result[8]),.cout(temp_cout[8]));
alu_top alu_09(.src1(src1[9]),.src2(src2[9]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[8]),.operation(ALU_control[1:0]),.result(temp_result[9]),.cout(temp_cout[9]));
alu_top alu_10(.src1(src1[10]),.src2(src2[10]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[9]),.operation(ALU_control[1:0]),.result(temp_result[10]),.cout(temp_cout[10]));
alu_top alu_11(.src1(src1[11]),.src2(src2[11]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[10]),.operation(ALU_control[1:0]),.result(temp_result[11]),.cout(temp_cout[11]));
alu_top alu_12(.src1(src1[12]),.src2(src2[12]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[11]),.operation(ALU_control[1:0]),.result(temp_result[12]),.cout(temp_cout[12]));
alu_top alu_13(.src1(src1[13]),.src2(src2[13]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[12]),.operation(ALU_control[1:0]),.result(temp_result[13]),.cout(temp_cout[13]));
alu_top alu_14(.src1(src1[14]),.src2(src2[14]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[13]),.operation(ALU_control[1:0]),.result(temp_result[14]),.cout(temp_cout[14]));
alu_top alu_15(.src1(src1[15]),.src2(src2[15]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[14]),.operation(ALU_control[1:0]),.result(temp_result[15]),.cout(temp_cout[15]));
alu_top alu_16(.src1(src1[16]),.src2(src2[16]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[15]),.operation(ALU_control[1:0]),.result(temp_result[16]),.cout(temp_cout[16]));
alu_top alu_17(.src1(src1[17]),.src2(src2[17]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[16]),.operation(ALU_control[1:0]),.result(temp_result[17]),.cout(temp_cout[17]));
alu_top alu_18(.src1(src1[18]),.src2(src2[18]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[17]),.operation(ALU_control[1:0]),.result(temp_result[18]),.cout(temp_cout[18]));
alu_top alu_19(.src1(src1[19]),.src2(src2[19]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[18]),.operation(ALU_control[1:0]),.result(temp_result[19]),.cout(temp_cout[19]));
alu_top alu_20(.src1(src1[20]),.src2(src2[20]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[19]),.operation(ALU_control[1:0]),.result(temp_result[20]),.cout(temp_cout[20]));
alu_top alu_21(.src1(src1[21]),.src2(src2[21]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[20]),.operation(ALU_control[1:0]),.result(temp_result[21]),.cout(temp_cout[21]));
alu_top alu_22(.src1(src1[22]),.src2(src2[22]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[21]),.operation(ALU_control[1:0]),.result(temp_result[22]),.cout(temp_cout[22]));
alu_top alu_23(.src1(src1[23]),.src2(src2[23]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[22]),.operation(ALU_control[1:0]),.result(temp_result[23]),.cout(temp_cout[23]));
alu_top alu_24(.src1(src1[24]),.src2(src2[24]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[23]),.operation(ALU_control[1:0]),.result(temp_result[24]),.cout(temp_cout[24]));
alu_top alu_25(.src1(src1[25]),.src2(src2[25]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[24]),.operation(ALU_control[1:0]),.result(temp_result[25]),.cout(temp_cout[25]));
alu_top alu_26(.src1(src1[26]),.src2(src2[26]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[25]),.operation(ALU_control[1:0]),.result(temp_result[26]),.cout(temp_cout[26]));
alu_top alu_27(.src1(src1[27]),.src2(src2[27]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[26]),.operation(ALU_control[1:0]),.result(temp_result[27]),.cout(temp_cout[27]));
alu_top alu_28(.src1(src1[28]),.src2(src2[28]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[27]),.operation(ALU_control[1:0]),.result(temp_result[28]),.cout(temp_cout[28]));
alu_top alu_29(.src1(src1[29]),.src2(src2[29]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[28]),.operation(ALU_control[1:0]),.result(temp_result[29]),.cout(temp_cout[29]));
alu_top alu_30(.src1(src1[30]),.src2(src2[30]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[29]),.operation(ALU_control[1:0]),.result(temp_result[30]),.cout(temp_cout[30]));
alu_top alu_31(.src1(src1[31]),.src2(src2[31]),.less(1'b0),.A_invert(ALU_control[3]),.B_invert(ALU_control[2]),.cin(temp_cout[30]),.operation(ALU_control[1:0]),.result(temp_result[31]),.cout(temp_cout[31]));

wire less_in;// For the less port(input) of alu_top module
wire [32-1:0] temp_cout;// For the output port of alu_top module
wire [32-1:0] temp_result;// For the output port of alu_top module

//assign less_in = (temp_cout[30]&(~src2[31]))|(src1[31]&(~src2[31]))|(src1[31]&(~temp_cout[30]));
assign less = 1;//Needed to be change.

always @ ( * ) begin
	if(rst_n==1'b1)
		begin
			if(ALU_control[1:0]==2'b00)
				begin
					cout = temp_cout[31];
					if(ALU_control[3:2]==2'b00)
						begin
							overflow = (~(src1[31]^src2[31]))&&(result[31]!=src1[31]);
						end
					else
						begin
							overflow = (src1[31]^src2[31])&&(result[31]!=src1[31]);
						end
					zero = (|temp_result);
					result = temp_result;
				end
			else
				begin
					cout = 1'b0;
					zero = (|temp_result);
					overflow = 1'b0;
					result = temp_result;
				end
		end
	else
		begin
			cout = 1'b0;
			overflow = 1'b0;
			zero = 1'b0;
			result = 32'b0;
		end
end

endmodule
