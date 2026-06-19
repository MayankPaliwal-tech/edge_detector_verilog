// Odd counter

module odd_counter (
  input     wire        clk,
  input     wire        reset,

  output    logic[7:0]  cnt_o
);

  always@(posedge clk or posedge reset) begin
    if(reset) begin
      cnt_o <= 8'h1;
    end
    else
      cnt_o <= cnt_o +2;
  end

endmodule
