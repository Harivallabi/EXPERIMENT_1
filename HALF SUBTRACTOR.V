module hs(x,y,d,b);
input x,y;
output d,b;
wire w;
xor x1(d,x,y);
not n1(w,x);
and a1(b,y,w);
endmodule

