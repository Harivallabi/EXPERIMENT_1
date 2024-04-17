module fs(a,b,cin,d,e);
input a,b,cin;
output d,e;
wire w1,w2,w3,w4,w5;
xor x1(w2,a,b);
not n1(w1,a);
and a1(w4,w1,b);
xor x2(d,w2,cin);
not n2(w3,w2);
and a2(w5,w3,cin);
or o1(e,w5,w4);
endmodule
