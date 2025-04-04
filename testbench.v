// Testbench: tb_FA_st
// Description: Testbench for the structural Full Adder module
module tb_FA_st;

    // Testbench signals
    reg  a, b, cin;     // Inputs to the DUT (Device Under Test)
    wire s, c;          // Outputs from the DUT

    // Instantiate the Full Adder module
    FA_st uut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .c(c)
    );

    // Initial block for test stimulus
    initial begin
        // Initialize inputs
        a = 0; b = 0; cin = 0;

        // Dump variables for waveform viewing
        $dumpfile("fa_st_dump.vcd");  // Create a VCD file for waveform
        $dumpvars(0, tb_FA_st);      // Dump all variables in the testbench

        // Display header for output
        $display("Time\t a b cin | s c");
        $display("---------------------");

        // Test all input combinations
        #10 a = 0; b = 0; cin = 0;  // Test case 1: a=0, b=0, cin=0
        #10 a = 0; b = 0; cin = 1;  // Test case 2: a=0, b=0, cin=1
        #10 a = 0; b = 1; cin = 0;  // Test case 3: a=0, b=1, cin=0
        #10 a = 0; b = 1; cin = 1;  // Test case 4: a=0, b=1, cin=1
        #10 a = 1; b = 0; cin = 0;  // Test case 5: a=1, b=0, cin=0
        #10 a = 1; b = 0; cin = 1;  // Test case 6: a=1, b=0, cin=1
        #10 a = 1; b = 1; cin = 0;  // Test case 7: a=1, b=1, cin=0
        #10 a = 1; b = 1; cin = 1;  // Test case 8: a=1, b=1, cin=1

        // Wait for a few more time units and finish
        #10 $finish;
    end

    // Monitor block to display results at every change
    initial begin
        $monitor("%0t\t %b %b %b   | %b %b", $time, a, b, cin, s, c);
    end

endmodule
