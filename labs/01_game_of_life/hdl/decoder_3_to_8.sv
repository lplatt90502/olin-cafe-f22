`timescale 1ns/1ps
module decoder_3_to_8(ena, in, out);

  input wire ena;
  input wire [2:0] in;
  output logic [7:0] out;
logic in_bar
always_comb begin
    out[7] = in[0] & in[1] & in[2] & ena
    out[6] = in[0]  &in[1] & ~in[2] & ena
    out[5] = in[0]& ~in[1] & in[2] & ena
    out[4] = in[0] & ~in[1] & ~in[2] & ena
    out[3] = ~in[0] & in[1] & in[2] & ena
    out[2] = ~ in[0] & in[1] & ~ in[2] & ena
    out[1] = ~in[0] & ~in[1] & in[2] & ena
    out[0] = ~in[0] & ~in[1] & ~in[2] & ena
endmodule
