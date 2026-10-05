module taffic #(
  parameter RED=3'b100,
           GREEN=3'b010,
  YELLOW=3'b001)//FSM states 
  (input clk,rst,
    output reg [2:0]cur_state,
   output  reg[3:0]count);
  always @(posedge clk)
    begin
      if(rst)//active-high reset
        begin
          cur_state<=RED;//current state is RED
         count<=0;//reset count
        end
      else//reset is inactive
        begin
          count<=count+1;//increment count
          case(cur_state)//case statement for current state
           
            RED: //when current state is RED
              begin   
                if(count==9)//when count reaches 9 current state changes from RED to GREEN
                begin
              cur_state<=GREEN;//RED to GREEN
                count<=0;//reset count
                end
         end
              GREEN://when current state is GREEN
                begin
                  if(count==9)//wait till count reaches 9
                begin
                cur_state<=YELLOW;//GREEN to YELLOW 
                count<=0;// reset count
                end
              end
              
              YELLOW://current state is YELLOW
                begin
                  if(count==2)//wait till count reaches 2
                begin
                cur_state<=RED;//YELLOW to RED
                count<=0;// reset count
                end
              end
          endcase//end of case statement
        end
    end
      endmodule
            
              
              
              
