//Developed by: Aashi Srivastava
// TITLE: Full Subtractor test bench
// Date: 11.10.23, 20:09 IST


module full_sub_tb (
    
);
    reg in1,in2, borrow_in;
    wire  diff, borrow_out;

full_sub_CA  f(diff,borrow_out,in1,in2,borrow_in);

    initial begin
        $dumpfile("full_sub_CA.vcd");
        $dumpvars(0,full_sub_tb);
        $monitor($time, "diff=%b borrow_out=%b in1=%b in2=%b borrow_in=%b",diff,borrow_out,in1,in2,borrow_in);
        #40 $finish;
    end
    initial begin
        in1=0;
        #20 in1=~in1;
    end
    initial begin
        in2=0;
        repeat(3)
        #10 in2=~in2;
    end
    initial begin
        borrow_in=0;
        repeat(7)
        #5 borrow_in=~borrow_in;
    end

endmodule