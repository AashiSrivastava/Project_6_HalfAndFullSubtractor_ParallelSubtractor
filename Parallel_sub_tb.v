//Developed by: Aashi Srivastava
// TITLE: 4-bit parallel subtractor test bench
// Date: 11.10.23, 20:24 IST
module Parallel_sub_tb (
    

);
    reg [3:0]in1,in2;
    wire [3:0] diff;
    wire borrow_out;
    reg borrow_in;

 Parallel_sub p(
    diff,borrow_out,in1,in2,borrow_in
);

initial begin
    $dumpfile("Parallel_sub.vcd");
    $dumpvars(0, Parallel_sub_tb);
    $monitor($time, "diff=%b borrow_out=%b in1=%b in2=%b",diff,borrow_out,in1,in2);
        #40 $finish;
    end
initial begin
    in1=4'b1010;
    in2=4'b0011;
    borrow_in=1'b1;
end
endmodule