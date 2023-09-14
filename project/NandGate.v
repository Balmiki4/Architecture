module NandGate(A, B, o);

input wire A, B;
output wire o;

assign o = ~ (A & B);

endmodule 