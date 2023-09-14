module Testbench;

//Inputs
reg A;
reg B;
reg [3:0] A_4bit;

//Outputs
wire o_not;
wire o_nand;
wire o_nor;
wire [3:0] o_shift;

// Instantiate modules
NotGate not_gate(.A(A), .o(o_not));
NandGate nand_gate(.A(A), .B(B), .o(o_nand));
NorGate nor_gate(.A(A), .B(B), .o(o_nor));
ShiftRight shift_right(.A(A_4bit), .o(o_shift));

// Testbench stimulus

initial begin
    //create VCD file
    $dumpfile("simulation.vcd");
    $dumpvars; 

    //test the NOT gate
    A = 1'b0;
    #10; //wait for 5 time units
    A = 1'b1;
    #10;

    // test the NAND gate
    A = 1'b0;
    B = 1'b0;
    #10;
    A = 1'b0;
    B = 1'b1;
    #10;

    // test the NOR gate
    A = 1'b0;
    B = 1'b0;
    #10;
    A = 1'b0;
    B = 1'b1;
    #10;

    // test the 4-bit right shift 
    A_4bit = 4'b1010;
    #10;
    A_4bit = 4'b0110;
    #10;

    $finish;
end
endmodule