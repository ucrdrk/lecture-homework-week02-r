// Put your code below
// Put your code below
module endianness_converter(
    input clk, 
    input wire [31:0] word, 
    input wire endianness_in, 
    input wire endianess_out, 
    output reg [31:0] converted_word
);

always @(posedge clk) begin
    if (endianness_in == endianess_out) begin
        converted_word <= word;
    end else begin
        converted_word <= {word[7:0], word[15:8], word[23:16], word[31:24]};
    end
end

endmodule
