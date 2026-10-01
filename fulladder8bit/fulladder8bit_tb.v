
`timescale 1ns / 1ps

module full_adder_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg Cin;

wire [7:0] S;
wire Cout;

// Instantiate the 8-bit Full Adder
full_adder_8bit uut (
    .A0(A[0]), .A1(A[1]), .A2(A[2]), .A3(A[3]),
    .A4(A[4]), .A5(A[5]), .A6(A[6]), .A7(A[7]),

    .B0(B[0]), .B1(B[1]), .B2(B[2]), .B3(B[3]),
    .B4(B[4]), .B5(B[5]), .B6(B[6]), .B7(B[7]),

    .Cin(Cin),

    .S0(S[0]), .S1(S[1]), .S2(S[2]), .S3(S[3]),
    .S4(S[4]), .S5(S[5]), .S6(S[6]), .S7(S[7]),

    .Cout(Cout)
);

initial begin

    A = 8'd1;   B = 8'd1;   Cin = 0;
    #10;

    A = 8'd5;   B = 8'd3;   Cin = 0;
    #10;

    A = 8'd10;  B = 8'd20;  Cin = 0;
    #10;

    A = 8'd255; B = 8'd1;   Cin = 0;
    #10;

    A = 8'd255; B = 8'd255; Cin = 0;
    #10;

    A = 8'd10;  B = 8'd20;  Cin = 1;
    #10;

    A = 8'd0;   B = 8'd0;   Cin = 0;
    #10;

    $finish;
end

initial begin
    $monitor(
        "Time=%0t A=%d B=%d Cin=%b Sum=%d Cout=%b",
        $time, A, B, Cin, S, Cout
    );
end

endmodule