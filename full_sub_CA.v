//Developed by: Aashi Srivastava
// TITLE: Full Subtractor using continuous assignment
// Date: 11.10.23, 20:09 IST

module full_sub_CA(
    diff,borrow_out,in1,in2,borrow_in
);
input in1,in2, borrow_in;
output diff, borrow_out;
assign diff=(in1^in2)^borrow_in;
assign borrow_out=(~in1 & borrow_in)|(~in1 & in2)|(borrow_in & in2);
endmodule