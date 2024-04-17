module ha(x,y,a,b);
input x,y;
output a,b;
xor x1(a,x,y);
and x2(b,x,y);
endmodule
