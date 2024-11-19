
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Nov 16 2024 13:04:41 IST (Nov 16 2024 07:34:41 UTC)

// Verification Directory fv/ECPETA 

module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__2398(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_14(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__5107(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_13(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__6260(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_12(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__4319(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_11(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__8428(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_10(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__5526(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_9(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  ADDFX1 g66__6783(.A (X), .B (Y), .CI (Ci), .CO (Co), .S (S));
endmodule

module fulladder_8(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire X, Y, Ci;
  wire S, Co;
  wire n_0;
  XNOR2X1 g37__3680(.A (n_0), .B (Ci), .Y (S));
  XNOR2X1 g38__1617(.A (Y), .B (X), .Y (n_0));
endmodule

module RCA(X, Y, Ci, S, Co);
  input [7:0] X, Y;
  input Ci;
  output [7:0] S;
  output Co;
  wire [7:0] X, Y;
  wire Ci;
  wire [7:0] S;
  wire Co;
  wire [6:0] w;
  wire n_0;
  fulladder \adder_stage[0].genblk1.FA (X[0], Y[0], Ci, S[0], w[0]);
  fulladder_14 \adder_stage[1].genblk1.FA (X[1], Y[1], w[0], S[1],
       w[1]);
  fulladder_13 \adder_stage[2].genblk1.FA (X[2], Y[2], w[1], S[2],
       w[2]);
  fulladder_12 \adder_stage[3].genblk1.FA (X[3], Y[3], w[2], S[3],
       w[3]);
  fulladder_11 \adder_stage[4].genblk1.FA (X[4], Y[4], w[3], S[4],
       w[4]);
  fulladder_10 \adder_stage[5].genblk1.FA (X[5], Y[5], w[4], S[5],
       w[5]);
  fulladder_9 \adder_stage[6].genblk1.FA (X[6], Y[6], w[5], S[6], w[6]);
  fulladder_8 \adder_stage[7].genblk1.FA (X[7], Y[7], w[6], S[7], n_0);
endmodule

module ECPETA(A, B, sum);
  input [15:0] A, B;
  output [15:0] sum;
  wire [15:0] A, B;
  wire [15:0] sum;
  wire Cin, cout, n_0, n_1, n_2, n_3, n_4, n_5;
  wire n_6, n_7;
  RCA RCA1(A[15:8], B[15:8], Cin, sum[15:8], cout);
  OR3XL g343__2802(.A (B[1]), .B (A[1]), .C (n_7), .Y (sum[1]));
  OR4X1 g344__1705(.A (B[0]), .B (A[0]), .C (n_1), .D (n_7), .Y
       (sum[0]));
  OR3XL g345__5122(.A (B[3]), .B (A[3]), .C (n_0), .Y (sum[3]));
  OR3XL g346__8246(.A (B[2]), .B (A[2]), .C (n_6), .Y (sum[2]));
  OAI2BB1X1 g347__7098(.A0N (B[2]), .A1N (A[2]), .B0 (n_5), .Y (n_7));
  INVXL g348(.A (n_5), .Y (n_6));
  AOI21XL g349__6131(.A0 (B[3]), .A1 (A[3]), .B0 (n_0), .Y (n_5));
  AOI2BB1XL g350__1881(.A0N (B[7]), .A1N (A[7]), .B0 (Cin), .Y
       (sum[7]));
  OR3XL g351__5115(.A (B[4]), .B (A[4]), .C (n_4), .Y (sum[4]));
  NAND2XL g353__7482(.A (n_2), .B (n_3), .Y (sum[5]));
  OAI2BB1X1 g355__4733(.A0N (B[5]), .A1N (A[5]), .B0 (n_3), .Y (n_4));
  OAI2BB1X1 g356__6161(.A0N (B[7]), .A1N (A[7]), .B0 (n_3), .Y (Cin));
  OR2XL g357__9315(.A (B[6]), .B (A[6]), .Y (sum[6]));
  NAND2XL g358__9945(.A (B[6]), .B (A[6]), .Y (n_3));
  NOR2XL g359__2883(.A (B[5]), .B (A[5]), .Y (n_2));
  AND2X1 g360__2346(.A (A[1]), .B (B[1]), .Y (n_1));
  AO21XL g2__1666(.A0 (B[4]), .A1 (A[4]), .B0 (n_4), .Y (n_0));
endmodule

