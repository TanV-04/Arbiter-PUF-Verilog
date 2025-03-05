module arbiter_puf_tb();
    reg clk;
    reg [63:0] challenge;
    wire response;

    arbiter_puf dut (
        .clk(clk),
        .challenge(challenge),
        .response(response)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        challenge = 64'hA5A5A5A5A5A5A5A5;
        #100;
        $display("Challenge: %h, Response: %b", challenge, response);
        $stop;
    end
endmodule
