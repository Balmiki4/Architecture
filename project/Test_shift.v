module Test_shift;

//Inputs

reg [3:0] A_4bit;

//output
wire [3:0] o_shift;

//Instantiate modules
ShiftRight shift_right(.A(A_4bit), .o(o_shift));
initial begin
    //create VCD file
    $dumpfile("simu_shift.vcd");
    $dumpvars; 
    // test the 4-bit right shift 
    A_4bit = 4'b1010;
    #10;
    A_4bit = 4'b0110;
    #10;

    $finish;
end
endmodule 