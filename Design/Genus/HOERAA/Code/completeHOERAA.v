`timescale 1ns / 1ps

module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire w1,w2,w3;
  //Structural code for one bit full adder
  xor G1(w1, X, Y);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, X, Y);
  or G5(Co, w2, w3);
endmodule

module RCA #(parameter N = 16) (X, Y, Ci, S, Co);
    input [N-1:0] X, Y; // Two N-bit inputs
    input Ci;
    output [N-1:0] S;
    output Co;
    wire [N-2:0] w; // Intermediate carry wires

    genvar i;

    generate
        for (i = 0; i < N; i = i + 1) begin : adder_stage
            if (i == 0) begin
                fulladder FA(X[0], Y[0], Ci, S[0], w[0]); // First stage with carry-in = 0
            end
            else if (i == N-1) begin
                fulladder FA(X[N-1], Y[N-1], w[N-2], S[N-1], Co); // Last stage with final carry-out
            end
            else begin
                fulladder FA(X[i], Y[i], w[i-1], S[i], w[i]); // Intermediate stages
            end
        end
    endgenerate
endmodule

module HOERAA #(parameter N = 16,K=12)(X, Y, S, Co);
    input [N-1:0] X, Y;
    output [N-1:0] S;
    output Co;
    wire Ci,w1,w2;
    
    and G1(Ci, X[N-K-1], Y[N-K-1]);
    RCA #(.N(K)) accurate_subadder(X[N-1:N-K],Y[N-1:N-K],Ci,S[N-1:N-K],Co);
    
    or G2(w1,X[N-K-1],Y[N-K-1]);
    and G3(w2,X[N-K-2],Y[N-K-2]);
    assign S[N-K-1]=Ci?w2:w1;
    
    or G4(S[N-K-2],X[N-K-2],Y[N-K-2]);
    genvar i;
    generate
        for(i=0;i<=N-K-3;i=i+1) begin : approx_stage
            assign S[i]=1;
        end
    endgenerate
    
endmodule
