module Test_Nor;

//Inputs
reg A;
reg B;

//Outputs
wire o_nor;

// Instantiate modules
NorGate nor_gate(.A(A), .B(B), .o(o_nor));

// Testbench stimulus
initial begin
    //create VCD file
    $dumpfile("simu_Nor.vcd");
    $dumpvars; 

    // test the NOR gate
    A = 1'b0;
    B = 1'b0;
    #10;
    A = 1'b0;
    B = 1'b1;
    #10;

    $finish;
end

endmodule