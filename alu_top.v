`timescale 1ns/1ps

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    10:58:01 10/10/2011
// Design Name:
// Module Name:    alu_top
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

module alu_top(
               src1,       //1 bit source 1 (input)
               src2,       //1 bit source 2 (input)
               less,       //1 bit less     (input)
               A_invert,   //1 bit A_invert (input)
               B_invert,   //1 bit B_invert (input)
               cin,        //1 bit carry in (input)
               operation,  //operation      (input)
               result,     //1 bit result   (output)
               cout,       //1 bit carry out(output)
               );

input         src1;
input         src2;
input         less;
input         A_invert;
input         B_invert;
input         cin;
input [2-1:0] operation;

output        result;
output        cout;

reg           result;
reg real_src1; //Real operand_1
reg real_src2; //Real operand_2

always@( * )
begin
	if(A_invert)
		begin
			real_src1=~src1;
		end
	else
		begin
			real_src1=src1;
		end
	if(B_invert)
		begin
			real_src2=~src2;
		end
	else
		begin
			real_src2=src2;
		end
/*--Opeartion MUX below-----------------------------------*/
	case(operation)
		2'b00://For OR and NAND
			begin
				result = real_src1&real_src2;
				cout = 1'b0;
			end
		2'b01://For AND and NOR
			begin
				result = real_src1|real_src2;
				cout = 1'b0;
			end
		2'b10://For Addition and Subtraction
			begin
				result = (real_src1^real_src2)^cin;
				cout = (real_src1&real_src2)|(real_src1&cin)|(real_src2&cin);
			end
		2'b11://For slt
			begin
				result = less;
				cout = (real_src1&real_src2)|(real_src1&cin)|(real_src2&cin);
			end
		default:
			result = 1'b0;
			cout = 1'b0;
	endcase
end

endmodule
