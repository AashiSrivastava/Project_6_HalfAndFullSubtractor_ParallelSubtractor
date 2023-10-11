//Developed by: Aashi Srivastava
// TITLE: Half subtractor using continuous assignment
// Date: 10.10.23, 9:44 IST

module half_adder_ins(
    diff,borrow,in1,in2
);
input in1,in2;
output diff, borrow;
wire wire1;

xor n1(diff,in1,in2);
not n(wire1,in1); //differnce of half subtractor is given by xor of both the inputs
and n2(borrow,wire1,in2); // borrow of the half sub is given by and of complement of input 1 and input 2
endmodule