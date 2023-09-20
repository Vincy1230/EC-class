`timescale 1ns/1ns
module assignments();
    logic a, b, c, d, e, f;
    initial begin
        a = #10 1'b1;   //time 10
        b = #2  1'b0;   //time 12
        c = #4  1'b1;   //time 16
    end
    initial begin
        d <= #10 1'b1;  // time 10
        e <= #2  1'b0;  // time 2
        f <= #4  1'b1;  //time 4
    end
    initial begin
        $monitor ($time, , "a=%b b=%b c=%b d=%b e=%b f=%b", a, b, c, d,e, f);
        #100 $stop;
    end
endmodule
