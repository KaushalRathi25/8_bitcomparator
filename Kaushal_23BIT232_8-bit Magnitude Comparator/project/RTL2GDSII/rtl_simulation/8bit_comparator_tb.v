
`timescale 1ns/1ns
`include "8bit_comparator_rtl.v"

module magComp_tb;

  // Inputs
  reg Clock;
  reg [7:0] A;
  reg [7:0] B;

  // Outputs
  wire Gt;
  wire Lt;
  wire Eq;

  // Instantiate the Unit Under Test (UUT)
  magComp dut (
    .Clock(Clock),
    .A(A),
    .B(B),
    .Gt(Gt),
    .Lt(Lt),
    .Eq(Eq)
  );

  // Clock generation: Toggle every 10 ns => 20 ns clock period
  initial begin
     $fsdbDumpvars();
    Clock = 0;
    forever #10 Clock = ~Clock;
  end

  // Monitor output signals
  initial begin
    $display("Time\tClocktA\tB\tGt\tLt\tEq");
    $monitor("%0t\t%b\t%0d\t%0d\t%b\t%b\t%b", $time, Clock, A, B, Gt, Lt, Eq);
  end

  // Test sequence
  initial begin
    // Initialize Inputs
    A = 8'b00000000;
    B = 8'b00000000;

    // Wait 2 clock cycles (just for setup)
    #40;

    // Stimulus
    A = 8'd5;     B = 8'd7;
    #20;

    A = 8'd105;   B = 8'd120;
    #20;

    A = 8'd250;   B = 8'd250;
    #20;

    A = 8'd0;     B = -8'sd5;  // Note: Bitwise interpretation
    #20;

    A = -8'sd5;   B = -8'sd5;
    #20;

    // End simulation after some time
    #40;
    $finish;
  end

endmodule
