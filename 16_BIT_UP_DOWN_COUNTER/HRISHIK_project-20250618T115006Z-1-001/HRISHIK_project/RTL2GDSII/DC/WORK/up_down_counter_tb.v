`timescale 1ns/1ps

`include "up_down_counter_rtl.v"

module up_down_counter_16bit_tb;

    // Inputs
    reg Clock;
    reg Reset;
    reg Enable;
    reg Up_Down;

    // Output
    wire [15:0] Count;

    // Instantiate the Unit Under Test (UUT)
    up_down_counter_16bit uut (
        .Clock(Clock),
        .Reset(Reset),
        .Enable(Enable),
        .Up_Down(Up_Down),
        .Count(Count)
    );

    // Clock Generation: 10ns clock period (100 MHz)
    always #5 Clock = ~Clock;

    initial begin
        // FSDB Dump
        $fsdbDumpfile("novas.fsdb");
        $fsdbDumpvars(0, up_down_counter_16bit_tb);

        // Initialize Inputs
        Clock = 0;
        Reset = 1;
        Enable = 0;
        Up_Down = 1;

        // Hold Reset for a few cycles
        #20;
        Reset = 0;

        // Enable and count up for 10 cycles
        Enable = 1;
        Up_Down = 1;
        #100;

        // Count down for 10 cycles
        Up_Down = 0;
        #100;

        // Disable counter
        Enable = 0;
        #50;

        // Re-enable and count up
        Enable = 1;
        Up_Down = 1;
        #50;

        // Apply reset again
        Reset = 1;
        #10;
        Reset = 0;

        #50;

        $finish;
    end

    // Monitor Output
    initial begin
        $display("Time\tClk\tRst\tEn\tDir\tCount");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%0d", $time, Clock, Reset, Enable, Up_Down, Count);
    end

endmodule

