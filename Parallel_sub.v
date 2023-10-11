//Developed by: Aashi Srivastava
// TITLE: 4-bit parallel subtractor
// Date: 11.10.23, 20:24 IST
module Parallel_sub (
    diff,borrow_out,in1,in2,borrow_in
);
    input [3:0] in1, in2;
    output [3:0]diff;
    output borrow_out;
    input borrow_in;
    wire [2:0] wire1;

    full_adder_CA f1(diff[0],wire1[0],in1[0],in2[0],borrow_in);
    
    full_adder_CA f2(diff[1],wire1[1],in1[1],in2[1],wire1[0]);
    
    full_adder_CA f3(diff[2],wire1[2],in1[2],in2[2],wire1[1]);
    
    full_adder_CA f4(diff[3],borrow_out,in1[3],in2[3],wire1[2]);

endmodule

module full_adder_CA(
    diff,borrow_out,in1,in2,borrow_in
);
input in1,in2, borrow_in;
output diff, borrow_out;
wire wire1, wire2, wire3;

assign wire1=~in2;
assign diff=(in1^(wire1))^borrow_in;
assign borrow_out=(in1 & wire1)|(wire1 & borrow_in)|(borrow_in & in1);
endmodule