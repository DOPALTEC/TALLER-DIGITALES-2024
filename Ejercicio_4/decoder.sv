`timescale 1ns / 1ps
module decode(
  input logic    A,
  input logic    B,
  input logic    C,
  input logic    D,
  output logic   a,
  output logic   b,
  output logic   c,
  output logic   d,
  output logic   e,
  output logic   f,
  output logic   g
  
  );

  assign a = ~((~B & ~D) | (A & ~D) | (~A & ~B & C) | (~A & B & D) | (B & C & D) | (A & ~B & ~C));
  assign b = ~((~A & ~B) | (~B & ~D) | (~A & ~C & ~D) | (~A & C & D) | (A & ~C & D));
  assign c = ~((~A & ~C) | (~A & D) | (~C & D) | (~A & B) | (A & ~B));
  assign d = ~((~A & ~B & ~D) | (~B & C & D) | (B & ~C & D) | (B & C & ~D) | (A & ~C & ~D));
  assign e = ~((~B & ~D) | (C & ~D ) | (A & C) | (A & B));
  assign f = ~((~C & ~D) | (B & ~D) | (A & ~B) | (A & C) | (~A & B & ~C));
  assign g = ~((~B & C) | (C & ~D) | (A & ~B) | (A & D) | (~A & B & ~C));

endmodule
