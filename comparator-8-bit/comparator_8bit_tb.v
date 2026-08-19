module comparator_8bit_tb;

reg  [7:0] A;
reg  [7:0] B;

wire A_greater_B;
wire A_equal_B;
wire A_less_B;

comparator_8bit uut (
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
);

initial begin

    $monitor("Time=%0t | A=%d | B=%d | A>B=%b | A=B=%b | A<B=%b",
             $time, A, B,
             A_greater_B, A_equal_B, A_less_B);

    // Test 1: A > B
    A = 8'd100;
    B = 8'd50;
    #10;

    // Test 2: A < B
    A = 8'd25;
    B = 8'd75;
    #10;

    // Test 3: A = B
    A = 8'd60;
    B = 8'd60;
    #10;

    // Test 4
    A = 8'd255;
    B = 8'd0;
    #10;

    // Test 5
    A = 8'd0;
    B = 8'd255;
    #10;

    $finish;
end

endmodule