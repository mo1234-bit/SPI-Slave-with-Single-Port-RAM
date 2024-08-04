module test_ram();
parameter MEM_DEPTH=256;
parameter ADDER_SIZE=8;
reg [9:0]din;
reg clk,rst_n,rx_valid;
wire [ADDER_SIZE-1:0]dout;
wire tx_valid;
ram dut(din,clk,rst_n,rx_valid,dout,tx_valid);
integer i=0;
initial begin 
clk=0;
forever
#1 clk=~clk;
end 
initial begin
	$readmemh("mem.dat",dut.mem);
	rst_n=0;
	din=0;
	rx_valid=1;
	@(negedge clk);
	rst_n=1;
	din[9:8]=2'b00;
	din[7:0]=8'b11100110;
	@(negedge clk);
	din[9:8]=2'b01;
	din[7:0]=8'b11100110;
	@(negedge clk);
	din[9:8]=2'b10;
	din[7:0]=8'b11100110;
	@(negedge clk);
	din[9:8]=2'b11;
	din[7:0]=8'b11100110;
       @(negedge clk);
      
	$stop;
end
	endmodule