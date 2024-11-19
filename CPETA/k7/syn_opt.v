
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Nov 13 2024 19:31:06 IST (Nov 13 2024 14:01:06 UTC)

// Verification Directory fv/CPETA 

module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__2398(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_12(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__5107(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_11(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__6260(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_10(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__4319(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_9(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__8428(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_8(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__5526(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_7(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  wire n_0;
  XNOR2X1 g37__6783(.A (n_0), .B (Ci), .Y (S));
  XNOR2X1 g38__3680(.A (Y), .B (X), .Y (n_0));
endmodule

module RCA(X, Y, Ci, S, Co);
  input [6:0] X, Y;
  input Ci;
  output [6:0] S;
  output Co;
  wire [6:0] X, Y;
  wire Ci;
  wire [6:0] S;
  wire Co;
  wire [5:0] w;
  wire n_0;
  fulladder \adder_stage[0].genblk1.FA (X[0], Y[0], Ci, S[0], w[0]);
  fulladder_12 \adder_stage[1].genblk1.FA (X[1], Y[1], w[0], S[1],
       w[1]);
  fulladder_11 \adder_stage[2].genblk1.FA (X[2], Y[2], w[1], S[2],
       w[2]);
  fulladder_10 \adder_stage[3].genblk1.FA (X[3], Y[3], w[2], S[3],
       w[3]);
  fulladder_9 \adder_stage[4].genblk1.FA (X[4], Y[4], w[3], S[4], w[4]);
  fulladder_8 \adder_stage[5].genblk1.FA (X[5], Y[5], w[4], S[5], w[5]);
  fulladder_7 \adder_stage[6].genblk1.FA (X[6], Y[6], w[5], S[6], n_0);
endmodule

module CPETA(A, B, sum);
  input [15:0] A, B;
  output [15:0] sum;
  wire [15:0] A, B;
  wire [15:0] sum;
  wire Cin, cout, n_0, n_1, n_2, n_3, n_4, n_5;
  wire n_6, n_7, n_8, n_9;
  RCA RCA1(A[15:9], B[15:9], Cin, sum[15:9], cout);
  OR4X1 g301__1617(.A (B[0]), .B (A[0]), .C (n_0), .D (n_9), .Y
       (sum[0]));
  OR3XL g302__2802(.A (B[2]), .B (A[2]), .C (n_8), .Y (sum[2]));
  OR3XL g303__1705(.A (B[1]), .B (A[1]), .C (n_9), .Y (sum[1]));
  OAI2BB1X1 g304__5122(.A0N (B[2]), .A1N (A[2]), .B0 (n_7), .Y (n_9));
  OR3XL g305__8246(.A (B[3]), .B (A[3]), .C (n_6), .Y (sum[3]));
  INVXL g306(.A (n_7), .Y (n_8));
  OR3XL g307__7098(.A (B[4]), .B (A[4]), .C (n_5), .Y (sum[4]));
  AOI21XL g308__6131(.A0 (B[3]), .A1 (A[3]), .B0 (n_6), .Y (n_7));
  OAI2BB1X1 g309__1881(.A0N (B[4]), .A1N (A[4]), .B0 (n_4), .Y (n_6));
  OR3XL g310__5115(.A (B[5]), .B (A[5]), .C (n_3), .Y (sum[5]));
  INVXL g311(.A (n_4), .Y (n_5));
  OR3XL g312__7482(.A (A[6]), .B (B[6]), .C (n_2), .Y (sum[6]));
  AOI21XL g313__4733(.A0 (B[5]), .A1 (A[5]), .B0 (n_3), .Y (n_4));
  OAI2BB1X1 g314__6161(.A0N (B[6]), .A1N (A[6]), .B0 (n_1), .Y (n_3));
  OR2XL g315__9315(.A (B[7]), .B (A[7]), .Y (sum[7]));
  INVXL g316(.A (n_1), .Y (n_2));
  AND2X1 g317__9945(.A (A[1]), .B (B[1]), .Y (n_0));
  NAND2XL g318__2883(.A (B[7]), .B (A[7]), .Y (n_1));
  ADDHX1 g150__2346(.A (B[8]), .B (A[8]), .CO (Cin), .S (sum[8]));
endmodule

