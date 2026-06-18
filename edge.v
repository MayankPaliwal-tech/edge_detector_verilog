 // An edge detector

module edge_detec (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    wire    rising_edge_o,
  output    wire    falling_edge_o
);
	reg prev;
  always@(posedge clk) begin
    if(reset) begin
    	prev<=0;
  	end
		else  begin
    	prev <= a_i;  
    end
  end
    
    assign rising_edge_o = a_i & ~prev;
    assign falling_edge_o = ~a_i & prev;
    
endmodule