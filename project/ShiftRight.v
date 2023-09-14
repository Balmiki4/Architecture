module ShiftRight(
     // 4-bit input and output
        input wire [3:0] A, 
        output wire [3:0] o
);
       
    
        //(right shift by 1 bit)
       assign o = {1'b0, A[3:1] }; //slice A from 1 to 3 bits and concatinate 0 in front of A

endmodule 