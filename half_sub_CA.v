//Developed by: Aashi Srivastava
// TITLE: Half Subtractor using continuous assignment
// Date: 10.10.23, 19:53 IST

module half_sub_CA(
    diff,borrow,in1,in2
);
input in1,in2;
output diff, borrow;

assign diff=in1^in2; //differnce of half subtractor is given by xor of both the inputs
assign borrow=(~in1 )& (in2); // borrow of the half sub is given by and of complement of input 1 and input 2
endmodule