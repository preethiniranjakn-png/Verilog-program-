module traffic_signal_tb;

  reg clk,rst;
  wire[2:0]cur_state;
  wire [3:0]count;
  taffic  uut(.clk(clk),.rst(rst),.cur_state(cur_state),.count(count));
  always #5 clk=~clk;
  initial
    begin
      $dumpfile("traffic.vcd");
      $dumpvars(0,traffic_signal_tb);
      $monitor("clk=%b rst=%d cur_state=%d count=%d",clk,rst,cur_state,count);
      clk=0;rst=1;
      
               
      #15;rst=0;
      #200;$finish;
    end
endmodule
