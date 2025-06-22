// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/3/2025 at 10:0:32
// Library Name: 8bit_comparator_LIB
// Block Name: magComp
// User Label: 
// Write Command: write_verilog ./results/full_adder.routed.v
module magComp ( Clock , A , B , Gt , Lt , Eq ) ;
input  Clock ;
input  [7:0] A ;
input  [7:0] B ;
output Gt ;
output Lt ;
output Eq ;

DFFX1_RVT Eq_reg ( .D ( N1 ) , .CLK ( ctosc_drc_0 ) , .Q ( Eq ) ) ;
DFFX1_RVT Gt_reg ( .D ( N6 ) , .CLK ( ctosc_drc_0 ) , .Q ( Gt ) ) ;
DFFX1_RVT Lt_reg ( .D ( N7 ) , .CLK ( ctosc_drc_0 ) , .Q ( Lt ) ) ;
NBUFFX2_RVT ctosc_drc_inst_335 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
NBUFFX16_RVT ctosc_drc_inst_426 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
INVX0_RVT U56 ( .A ( n62 ) , .Y ( n65 ) ) ;
INVX0_RVT U57 ( .A ( B[0] ) , .Y ( n53 ) ) ;
INVX0_RVT U58 ( .A ( A[4] ) , .Y ( n54 ) ) ;
INVX0_RVT U59 ( .A ( A[6] ) , .Y ( n51 ) ) ;
INVX0_RVT U60 ( .A ( B[6] ) , .Y ( n52 ) ) ;
INVX0_RVT U61 ( .A ( A[7] ) , .Y ( n75 ) ) ;
INVX0_RVT U62 ( .A ( A[3] ) , .Y ( n61 ) ) ;
OA22X1_RVT U63 ( .A1 ( B[3] ) , .A2 ( n61 ) , .A3 ( B[4] ) , .A4 ( n54 ) , 
    .Y ( n69 ) ) ;
OA22X1_RVT U64 ( .A1 ( A[0] ) , .A2 ( n53 ) , .A3 ( B[6] ) , .A4 ( n51 ) , 
    .Y ( n57 ) ) ;
INVX0_RVT U65 ( .A ( A[2] ) , .Y ( n58 ) ) ;
AO22X1_RVT U66 ( .A1 ( n61 ) , .A2 ( B[3] ) , .A3 ( n58 ) , .A4 ( B[2] ) , 
    .Y ( n62 ) ) ;
INVX0_RVT U67 ( .A ( B[1] ) , .Y ( n59 ) ) ;
AO22X1_RVT U68 ( .A1 ( A[1] ) , .A2 ( n59 ) , .A3 ( A[0] ) , .A4 ( n53 ) , 
    .Y ( n63 ) ) ;
INVX0_RVT U69 ( .A ( A[5] ) , .Y ( n55 ) ) ;
AO22X1_RVT U70 ( .A1 ( B[4] ) , .A2 ( n54 ) , .A3 ( B[5] ) , .A4 ( n55 ) , 
    .Y ( n72 ) ) ;
AO22X1_RVT U71 ( .A1 ( B[7] ) , .A2 ( n75 ) , .A3 ( B[6] ) , .A4 ( n51 ) , 
    .Y ( n71 ) ) ;
NOR4X0_RVT U72 ( .A1 ( n62 ) , .A2 ( n63 ) , .A3 ( n72 ) , .A4 ( n71 ) , 
    .Y ( n56 ) ) ;
OR2X1_RVT U73 ( .A1 ( n55 ) , .A2 ( B[5] ) , .Y ( n74 ) ) ;
OR2X1_RVT U74 ( .A1 ( n75 ) , .A2 ( B[7] ) , .Y ( n77 ) ) ;
AND4X1_RVT U75 ( .A1 ( n57 ) , .A2 ( n56 ) , .A3 ( n74 ) , .A4 ( n77 ) , 
    .Y ( n60 ) ) ;
OR2X1_RVT U76 ( .A1 ( n58 ) , .A2 ( B[2] ) , .Y ( n67 ) ) ;
OR2X1_RVT U77 ( .A1 ( n59 ) , .A2 ( A[1] ) , .Y ( n64 ) ) ;
AND4X1_RVT U78 ( .A1 ( n69 ) , .A2 ( n60 ) , .A3 ( n67 ) , .A4 ( n64 ) , 
    .Y ( N1 ) ) ;
AND2X1_RVT U80 ( .A1 ( B[3] ) , .A2 ( n61 ) , .Y ( n68 ) ) ;
NAND3X0_RVT U81 ( .A1 ( n65 ) , .A2 ( n64 ) , .A3 ( n63 ) , .Y ( n66 ) ) ;
OA221X1_RVT U82 ( .A1 ( 1'b0 ) , .A2 ( n69 ) , .A3 ( n68 ) , .A4 ( n67 ) , 
    .A5 ( n66 ) , .Y ( n73 ) ) ;
AO221X1_RVT U83 ( .A1 ( n74 ) , .A2 ( n73 ) , .A3 ( n74 ) , .A4 ( n72 ) , 
    .A5 ( n71 ) , .Y ( n79 ) ) ;
NAND2X0_RVT U84 ( .A1 ( B[7] ) , .A2 ( n75 ) , .Y ( n76 ) ) ;
NAND3X0_RVT U85 ( .A1 ( A[6] ) , .A2 ( n52 ) , .A3 ( n76 ) , .Y ( n78 ) ) ;
NAND3X0_RVT U86 ( .A1 ( n79 ) , .A2 ( n78 ) , .A3 ( n77 ) , .Y ( N6 ) ) ;
NOR2X0_RVT U87 ( .A1 ( N1 ) , .A2 ( N6 ) , .Y ( N7 ) ) ;
endmodule


