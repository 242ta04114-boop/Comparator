// Testbench for 1-Bit Comparator

module comparator_tb;

reg A;
reg B;

wire A_greater_B;
wire A_equal_B;
wire A_less_B;

comparator uut (
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
);

initial begin

    // Test Case 1: A = 0, B = 0
    A = 1'b0;
    B = 1'b0;
    #10;

    // Test Case 2: A = 0, B = 1
    A = 1'b0;
    B = 1'b1;
    #10;

    // Test Case 3: A = 1, B = 0
    A = 1'b1;
    B = 1'b0;
    #10;

    // Test Case 4: A = 1, B = 1
    A = 1'b1;
    B = 1'b1;
    #10;

    $finish;
end

initial begin
    $monitor("Time = %0t | A = %b | B = %b | A>B = %b | A=B = %b | A<B = %b",
             $time, A, B, A_greater_B, A_equal_B, A_less_B);
end

endmodule