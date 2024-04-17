module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1,w2,w3;
xor x1(w1,a,b);
and x2(w2,a,b);
xor x3(sum,w1,cin);
and x4(w3,w1,cin);
or x5(carry,w3,w2);
endmodule

module rca(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output[3:0]sum;
output carry;
wire w1,w2,w3;
fa g1(.a(a[0]),
      .b(b[0]),
      .cin(cin),
      .s(sum[0]),
      .carry(w1)
      );
fa g2(.a(a[1]),
      .b(b[1]),
      .cin(w1),
      .s(sum[1]),
      .carry(w2)
      );
 fa g3(.a(a[2]),
      .b(b[2]),
      .cin(w2),
      .s(sum[2]),
      .carry(w3)
      );
 fa g4(.a(a[3]),
      .b(b[3]),
      .cin(w3),
      .s(sum[3]),
      .carry(carry)
      );
  endmodule
