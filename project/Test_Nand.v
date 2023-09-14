module Test_Nand;

//Inputs
reg A;
reg B;

//Outputs
wire o_nand;

// Instantiate modules
NandGate nand_gate(.A(A), .B(B), .o(o_nand));

// Testbench stimulus
initial begin
    //create VCD file
    $dumpfile("simu_Nand.vcd");
    $dumpvars; 

    // test the NAND gate
    A = 1'b0;
    B = 1'b0;
    #10;
    A = 1'b0;
    B = 1'b1;
    #10;

    $finish;
end

endmodule