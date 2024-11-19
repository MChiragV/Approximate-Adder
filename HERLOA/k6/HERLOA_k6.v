
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Nov 14 2024 10:51:10 IST (Nov 14 2024 05:21:10 UTC)

// Verification Directory fv/HERLOA 

module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__2398(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_10(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__5107(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_9(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__6260(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_8(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__4319(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_7(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__8428(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_6(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  wire n_0;
  XNOR2X1 g37__5526(.A (n_0), .B (Ci), .Y (S));
  XNOR2X1 g38__6783(.A (Y), .B (X), .Y (n_0));
endmodule

module RCA_N6(X, Y, Ci, S, Co);
  input [5:0] X, Y;
  input Ci;
  output [5:0] S;
  output Co;
  wire [5:0] X, Y;
  wire Ci;
  wire [5:0] S;
  wire Co;
  wire [4:0] w;
  wire n_0;
  fulladder \adder_stage[0].genblk1.FA (X[0], Y[0], Ci, S[0], w[0]);
  fulladder_10 \adder_stage[1].genblk1.FA (X[1], Y[1], w[0], S[1],
       w[1]);
  fulladder_9 \adder_stage[2].genblk1.FA (X[2], Y[2], w[1], S[2], w[2]);
  fulladder_8 \adder_stage[3].genblk1.FA (X[3], Y[3], w[2], S[3], w[3]);
  fulladder_7 \adder_stage[4].genblk1.FA (X[4], Y[4], w[3], S[4], w[4]);
  fulladder_6 \adder_stage[5].genblk1.FA (X[5], Y[5], w[4], S[5], n_0);
endmodule

module HERLOA(A, B, S);
  input [15:0] A, B;
  output [15:0] S;
  wire [15:0] A, B;
  wire [15:0] S;
  wire Cin, cout, n_0, n_1, n_2, n_3, n_4, n_5;
  wire n_6, n_7, n_8, n_9, n_10, n_11;
  RCA_N6 RCA1(.X (A[15:10]), .Y (B[15:10]), .Ci (Cin), .S (S[15:10]),
       .Co (cout));
  NAND2XL g245__3680(.A (n_7), .B (n_11), .Y (S[3]));
  NAND2XL g246__1617(.A (n_1), .B (n_11), .Y (S[6]));
  NAND2XL g247__2802(.A (n_6), .B (n_11), .Y (S[7]));
  NAND2XL g248__1705(.A (n_8), .B (n_11), .Y (S[2]));
  NAND2XL g249__5122(.A (n_3), .B (n_11), .Y (S[5]));
  NAND2XL g250__8246(.A (n_2), .B (n_11), .Y (S[0]));
  NAND2XL g251__7098(.A (n_5), .B (n_11), .Y (S[1]));
  NAND2XL g252__6131(.A (n_0), .B (n_11), .Y (S[4]));
  OAI2BB1X1 g253__1881(.A0N (B[8]), .A1N (n_10), .B0 (n_9), .Y (S[8]));
  NAND2XL g254__5115(.A (n_4), .B (n_10), .Y (n_11));
  OR2XL g255__7482(.A (n_4), .B (n_10), .Y (S[9]));
  ADDHX1 g256__4733(.A (B[9]), .B (A[9]), .CO (Cin), .S (n_10));
  XNOR2X1 g257__6161(.A (B[8]), .B (A[8]), .Y (n_9));
  NOR2XL g258__9315(.A (B[2]), .B (A[2]), .Y (n_8));
  NOR2XL g259__9945(.A (B[3]), .B (A[3]), .Y (n_7));
  NOR2XL g260__2883(.A (B[7]), .B (A[7]), .Y (n_6));
  NOR2XL g261__2346(.A (B[1]), .B (A[1]), .Y (n_5));
  NOR2XL g262__1666(.A (B[5]), .B (A[5]), .Y (n_3));
  NOR2XL g263__7410(.A (B[0]), .B (A[0]), .Y (n_2));
  NOR2XL g264__6417(.A (B[6]), .B (A[6]), .Y (n_1));
  NOR2XL g265__5477(.A (B[4]), .B (A[4]), .Y (n_0));
  AND2X1 g266__2398(.A (A[8]), .B (B[8]), .Y (n_4));
endmodule

