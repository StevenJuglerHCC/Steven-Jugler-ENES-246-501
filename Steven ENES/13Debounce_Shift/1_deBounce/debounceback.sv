

module debouncer(
    input clk, //sw15 
    input pushButton,  //sw[0]
    output reg pushButton_state,  //blue RGBLED
    output reg PB_sync_0, //top bar of 7seg display
    output reg PB_sync_1, //bottom bar of seven seg display
    output [1:0] LED
);

// Synchronize the switch input to the clock
always_ff @(posedge clk) 
    PB_sync_0 <= pushButton; 

always_ff @(posedge clk) 
    PB_sync_1 <= PB_sync_0;
    
//set up display so can see bounce count, reset, see it roll over
reg [1:0] PB_cnt = 2; //set to high value so can see roll over
assign LED = PB_cnt; //display bounce count

// Debounce the switch
always_ff @(posedge clk)
    if(pushButton_state==PB_sync_1)
        PB_cnt <= 0;
    else
    begin
        PB_cnt <= PB_cnt + 1;  
        if(PB_cnt == 3) pushButton_state <= ~pushButton_state;  
    end
endmodule