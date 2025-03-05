module arbiter (
    input clk,
    input path0,
    input path1,
    output reg response
);
    always @(posedge clk) begin
        response <= (path0 & ~path1); 
    end
endmodule
