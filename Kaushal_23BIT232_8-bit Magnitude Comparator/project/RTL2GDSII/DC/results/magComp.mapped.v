/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Tue Jun  3 10:58:20 2025
/////////////////////////////////////////////////////////////


module magComp ( Clock, A, B, Gt, Lt, Eq );
  input [7:0] A;
  input [7:0] B;
  input Clock;
  output Gt, Lt, Eq;
  wire   N1, N6, N7, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n71, n72,
         n73, n74, n75, n76, n77, n78, n79;

  DFFX1_RVT Eq_reg ( .D(N1), .CLK(Clock), .Q(Eq) );
  DFFX1_RVT Gt_reg ( .D(N6), .CLK(Clock), .Q(Gt) );
  DFFX1_RVT Lt_reg ( .D(N7), .CLK(Clock), .Q(Lt) );
  INVX0_RVT U38 ( .A(B[2]), .Y(n33) );
  INVX0_RVT U39 ( .A(n33), .Y(n34) );
  INVX0_RVT U40 ( .A(B[4]), .Y(n35) );
  INVX0_RVT U41 ( .A(n35), .Y(n36) );
  INVX0_RVT U42 ( .A(B[5]), .Y(n37) );
  INVX0_RVT U43 ( .A(n37), .Y(n38) );
  INVX0_RVT U44 ( .A(A[0]), .Y(n39) );
  INVX0_RVT U45 ( .A(n39), .Y(n40) );
  INVX0_RVT U46 ( .A(A[1]), .Y(n41) );
  INVX0_RVT U47 ( .A(n41), .Y(n42) );
  INVX0_RVT U48 ( .A(A[6]), .Y(n43) );
  INVX0_RVT U49 ( .A(n43), .Y(n44) );
  INVX0_RVT U50 ( .A(B[3]), .Y(n45) );
  INVX0_RVT U51 ( .A(n45), .Y(n46) );
  INVX0_RVT U52 ( .A(B[6]), .Y(n47) );
  INVX0_RVT U53 ( .A(n47), .Y(n48) );
  INVX0_RVT U54 ( .A(B[7]), .Y(n49) );
  INVX0_RVT U55 ( .A(n49), .Y(n50) );
  INVX0_RVT U56 ( .A(n62), .Y(n65) );
  INVX0_RVT U57 ( .A(B[0]), .Y(n53) );
  INVX0_RVT U58 ( .A(A[4]), .Y(n54) );
  INVX0_RVT U59 ( .A(n44), .Y(n51) );
  INVX0_RVT U60 ( .A(n48), .Y(n52) );
  INVX1_RVT U61 ( .A(A[7]), .Y(n75) );
  INVX1_RVT U62 ( .A(A[3]), .Y(n61) );
  OA22X1_RVT U63 ( .A1(n46), .A2(n61), .A3(n36), .A4(n54), .Y(n69) );
  OA22X1_RVT U64 ( .A1(n40), .A2(n53), .A3(n48), .A4(n51), .Y(n57) );
  INVX1_RVT U65 ( .A(A[2]), .Y(n58) );
  AO22X1_RVT U66 ( .A1(n61), .A2(n46), .A3(n58), .A4(n34), .Y(n62) );
  INVX1_RVT U67 ( .A(B[1]), .Y(n59) );
  AO22X1_RVT U68 ( .A1(n42), .A2(n59), .A3(n40), .A4(n53), .Y(n63) );
  INVX1_RVT U69 ( .A(A[5]), .Y(n55) );
  AO22X1_RVT U70 ( .A1(n36), .A2(n54), .A3(n38), .A4(n55), .Y(n72) );
  AO22X1_RVT U71 ( .A1(n50), .A2(n75), .A3(n48), .A4(n51), .Y(n71) );
  NOR4X0_RVT U72 ( .A1(n62), .A2(n63), .A3(n72), .A4(n71), .Y(n56) );
  OR2X1_RVT U73 ( .A1(n55), .A2(n38), .Y(n74) );
  OR2X1_RVT U74 ( .A1(n75), .A2(n50), .Y(n77) );
  AND4X1_RVT U75 ( .A1(n57), .A2(n56), .A3(n74), .A4(n77), .Y(n60) );
  OR2X1_RVT U76 ( .A1(n58), .A2(n34), .Y(n67) );
  OR2X1_RVT U77 ( .A1(n59), .A2(n42), .Y(n64) );
  AND4X1_RVT U78 ( .A1(n69), .A2(n60), .A3(n67), .A4(n64), .Y(N1) );
  AND2X1_RVT U80 ( .A1(n46), .A2(n61), .Y(n68) );
  NAND3X0_RVT U81 ( .A1(n65), .A2(n64), .A3(n63), .Y(n66) );
  OA221X1_RVT U82 ( .A1(1'b0), .A2(n69), .A3(n68), .A4(n67), .A5(n66), .Y(n73)
         );
  AO221X1_RVT U83 ( .A1(n74), .A2(n73), .A3(n74), .A4(n72), .A5(n71), .Y(n79)
         );
  NAND2X0_RVT U84 ( .A1(n50), .A2(n75), .Y(n76) );
  NAND3X0_RVT U85 ( .A1(n44), .A2(n52), .A3(n76), .Y(n78) );
  NAND3X0_RVT U86 ( .A1(n79), .A2(n78), .A3(n77), .Y(N6) );
  NOR2X0_RVT U87 ( .A1(N1), .A2(N6), .Y(N7) );
endmodule

