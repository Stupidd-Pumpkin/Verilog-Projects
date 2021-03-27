`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:17 01/16/2018 
// Design Name: 
// Module Name:    Experimental 
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
module File_Handling(
    );
reg [7:0] data[0:15];
reg [15:0] i;
integer file_in,file_out;
reg [7:0] char;
initial
begin
	file_in=$fopen("Experimental.txt","r");
	file_out=$fopen("Experimental2.txt");
	if (file_in&&file_out)
		$display("DFTBA!");
	else
		$display("Such a Drag!");

for (i=0;i<=15;i=i+1)
begin
	char=$fgetc(file_in);
	data[i]=char;
	$fwrite(file_out,data[i]);

end	
$fclose("Experimental.txt");
$fclose("Experimental2.txt");
end

endmodule
