module test();
reg MOSI,clk,rst_n,SS_n;
wire MISO;
project dut(MOSI,MISO,SS_n,clk,rst_n);
integer i=0;
initial begin 
clk=0;
forever
#1 clk=~clk;
end
initial begin
	rst_n=0;
	MOSI=1;
	SS_n=0;
    @(negedge clk);
SS_n=0;
    rst_n=1;
     @(negedge clk);
     MOSI=0;
     @(negedge clk);
     @(negedge clk);
     @(negedge clk)
     @(negedge clk);
     @(negedge clk);
      for(i=0;i<8;i=i+1)begin
      	MOSI=1;
      @(negedge clk);
      end
      SS_n=0;
      @(negedge clk);
      SS_n=1;
      MOSI=0;
      @(negedge clk);
      SS_n=0;
      MOSI=0;
      @(negedge clk);
      @(negedge clk);
      MOSI=1;
      @(negedge clk);
      @(negedge clk);
      MOSI=0;
      @(negedge clk);
      for(i=0;i<6;i=i+1)begin
      	MOSI=1;
      @(negedge clk);
      end
      SS_n=1;
      @(negedge clk);
      SS_n=0;
      @(negedge clk);
      MOSI=1;
      @(negedge clk);
      @(negedge clk);
      MOSI=0;
      @(negedge clk);
      MOSI=1;
      @(negedge clk);
     for(i=0;i<7;i=i+1)begin
      	MOSI=1;
      @(negedge clk);
      end
       SS_n=1;
      @(negedge clk);
      SS_n=0;
       @(negedge clk);
      MOSI=1;
      @(negedge clk);
      @(negedge clk);
    @(negedge clk);
    @(negedge clk);
      for(i=0;i<6;i=i+1)begin
      	MOSI=0;
      @(negedge clk);
      end
      SS_n=1;
      @(negedge clk);
     SS_n=0;
     rst_n=0;
     @(negedge clk);
      MOSI=0;
     rst_n=1;
     @(negedge clk);
     MOSI=0;
     @(negedge clk);
     @(negedge clk);
     @(negedge clk);
 @(negedge clk);
     @(negedge clk);
      for(i=0;i<8;i=i+1)begin
      	MOSI=1;
      @(negedge clk);
      end
      SS_n=0;
      @(negedge clk);
      SS_n=1;
      MOSI=0;
      @(negedge clk);
      SS_n=0;
      @(negedge clk);
      @(negedge clk);
      MOSI=1;
      @(negedge clk);
      @(negedge clk);
      MOSI=0;
      @(negedge clk);
      for(i=0;i<5;i=i+1)begin
      	MOSI=1;
      @(negedge clk);
      end
      MOSI=0;
      @(negedge clk);
      SS_n=1;
      @(negedge clk);
      SS_n=0;
      @(negedge clk);
      MOSI=1;
      @(negedge clk);
      @(negedge clk);

      MOSI=0;
      @(negedge clk);
      MOSI=1;
      @(negedge clk);
     for(i=0;i<7;i=i+1)begin
      	MOSI=1;
      @(negedge clk);
      end
       SS_n=1;
      @(negedge clk);
      SS_n=0;
       @(negedge clk);
      MOSI=1;
      @(negedge clk);
      @(negedge clk);
    @(negedge clk);
    @(negedge clk);
      for(i=0;i<7;i=i+1)begin
      	MOSI=0;
      @(negedge clk);
      end
      
      SS_n=1;
     @(negedge clk);
     SS_n=0;
     rst_n=0;
     @(negedge clk);
      $stop;
     
end
endmodule