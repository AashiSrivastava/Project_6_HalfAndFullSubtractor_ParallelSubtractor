module half_sub_tb (
    
);
    reg in1, in2;
    wire diff, borrow;

    half_sub_CA h(diff,borrow,in1,in2);

    initial begin
        in1=0;
        in2=1;
        #2 in2=0;
    end
    initial begin
        repeat(10)
        #4 in1= ~in1;
    end
     initial begin
        repeat(10)
        #3 in2= ~in2;
    end

    initial begin
        $dumpfile("half_sub_CA.vcd");
        $dumpvars(0,half_sub_tb);
        $monitor($time, "in1=%b in2=%b diff=%b borrow=%b", in1, in2, diff, borrow);
        #50 $finish;
    end
endmodule