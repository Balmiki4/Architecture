module Test_Not;

//Inputs
reg A;

//Outputs
wire o_not;

// Instantiate modules
NotGate not_gate(.A(A), .o(o_not));

// Testbench stimulus
initial begin
    //create VCD file
    $dumpfile("simu_Not.vcd");
    $dumpvars; 

    //test the NOT gate
    A = 1'b0;
    #10; //wait for 5 time units
    A = 1'b1;
    #10;
    $finish;

end
endmodule
