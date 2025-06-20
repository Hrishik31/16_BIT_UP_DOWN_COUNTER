// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/3/2025 at 14:23:1
// Library Name: UP_DOWN_COUNTER23_LIB
// Block Name: up_down_counter
// User Label: 
// Write Command: write_verilog ./results/up_down_counter.routed.v
module up_down_counter_16bit ( Clock , Reset , Enable , Up_Down , Count ) ;
input  Clock ;
input  Reset ;
input  Enable ;
input  Up_Down ;
output [15:0] Count ;

DFFX1_RVT \Count_reg[15] ( .D ( n5 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[15] ) ) ;
DFFX1_RVT \Count_reg[14] ( .D ( n6 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[14] ) ) ;
DFFX1_RVT \Count_reg[13] ( .D ( n7 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[13] ) ) ;
DFFX1_RVT \Count_reg[12] ( .D ( n8 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[12] ) ) ;
DFFX1_RVT \Count_reg[11] ( .D ( n9 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[11] ) ) ;
DFFX1_RVT \Count_reg[10] ( .D ( n10 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[10] ) ) ;
DFFX1_RVT \Count_reg[9] ( .D ( n11 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[9] ) ) ;
DFFX1_RVT \Count_reg[8] ( .D ( n12 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[8] ) ) ;
DFFX1_RVT \Count_reg[7] ( .D ( n13 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[7] ) ) ;
DFFX1_RVT \Count_reg[6] ( .D ( n14 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[6] ) ) ;
DFFX1_RVT \Count_reg[5] ( .D ( n15 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[5] ) ) ;
DFFX1_RVT \Count_reg[4] ( .D ( n16 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[4] ) ) ;
DFFX1_RVT \Count_reg[3] ( .D ( n17 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[3] ) ) ;
DFFX1_RVT \Count_reg[2] ( .D ( n18 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[2] ) ) ;
DFFX1_RVT \Count_reg[1] ( .D ( n19 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[1] ) ) ;
DFFX1_RVT \Count_reg[0] ( .D ( copt_net_2 ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( Count[0] ) , .QN ( n24 ) ) ;
INVX1_RVT HFSINV_183_0 ( .A ( Reset ) , .Y ( HFSNET_0 ) ) ;
IBUFFX8_RVT HFSINV_668_1 ( .A ( Up_Down ) , .Y ( HFSNET_1 ) ) ;
XOR2X1_RVT U26 ( .A1 ( n30 ) , .A2 ( n29 ) , .Y ( n31 ) ) ;
NBUFFX8_RVT ctosc_drc_inst_995 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
INVX2_RVT HFSINV_550_3 ( .A ( n38 ) , .Y ( HFSNET_3 ) ) ;
NBUFFX4_RVT ctosc_drc_inst_1111 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
NBUFFX2_RVT copt_h_inst_1112 ( .A ( n20 ) , .Y ( copt_net_2 ) ) ;
OR2X1_RVT U33 ( .A1 ( Enable ) , .A2 ( Reset ) , .Y ( n38 ) ) ;
AND2X2_RVT U35 ( .A1 ( Enable ) , .A2 ( HFSNET_0 ) , .Y ( n64 ) ) ;
XOR2X1_RVT U39 ( .A1 ( HFSNET_1 ) , .A2 ( Count[15] ) , .Y ( n29 ) ) ;
AO22X1_RVT U40 ( .A1 ( Count[15] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n31 ) , .Y ( n5 ) ) ;
FADDX1_RVT U41 ( .A ( Count[14] ) , .B ( HFSNET_1 ) , .CI ( n32 ) , 
    .CO ( n30 ) , .S ( n33 ) ) ;
AO22X1_RVT U42 ( .A1 ( Count[14] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n33 ) , .Y ( n6 ) ) ;
FADDX1_RVT U43 ( .A ( Count[13] ) , .B ( HFSNET_1 ) , .CI ( n34 ) , 
    .CO ( n32 ) , .S ( n35 ) ) ;
AO22X1_RVT U44 ( .A1 ( Count[13] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n35 ) , .Y ( n7 ) ) ;
FADDX1_RVT U45 ( .A ( Count[12] ) , .B ( HFSNET_1 ) , .CI ( n36 ) , 
    .CO ( n34 ) , .S ( n37 ) ) ;
AO22X1_RVT U46 ( .A1 ( Count[12] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n37 ) , .Y ( n8 ) ) ;
FADDX1_RVT U47 ( .A ( Count[11] ) , .B ( HFSNET_1 ) , .CI ( n39 ) , 
    .CO ( n36 ) , .S ( n40 ) ) ;
AO22X1_RVT U48 ( .A1 ( Count[11] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n40 ) , .Y ( n9 ) ) ;
FADDX1_RVT U49 ( .A ( Count[10] ) , .B ( HFSNET_1 ) , .CI ( n41 ) , 
    .CO ( n39 ) , .S ( n42 ) ) ;
AO22X1_RVT U50 ( .A1 ( Count[10] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n42 ) , .Y ( n10 ) ) ;
FADDX1_RVT U51 ( .A ( Count[9] ) , .B ( HFSNET_1 ) , .CI ( n43 ) , 
    .CO ( n41 ) , .S ( n44 ) ) ;
AO22X1_RVT U52 ( .A1 ( Count[9] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n44 ) , .Y ( n11 ) ) ;
FADDX1_RVT U53 ( .A ( Count[8] ) , .B ( HFSNET_1 ) , .CI ( n45 ) , 
    .CO ( n43 ) , .S ( n46 ) ) ;
AO22X1_RVT U54 ( .A1 ( Count[8] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n46 ) , .Y ( n12 ) ) ;
FADDX1_RVT U55 ( .A ( Count[7] ) , .B ( HFSNET_1 ) , .CI ( n47 ) , 
    .CO ( n45 ) , .S ( n48 ) ) ;
AO22X1_RVT U56 ( .A1 ( Count[7] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n48 ) , .Y ( n13 ) ) ;
FADDX1_RVT U57 ( .A ( Count[6] ) , .B ( HFSNET_1 ) , .CI ( n49 ) , 
    .CO ( n47 ) , .S ( n50 ) ) ;
AO22X1_RVT U58 ( .A1 ( Count[6] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n50 ) , .Y ( n14 ) ) ;
FADDX1_RVT U59 ( .A ( Count[5] ) , .B ( HFSNET_1 ) , .CI ( n51 ) , 
    .CO ( n49 ) , .S ( n52 ) ) ;
AO22X1_RVT U60 ( .A1 ( Count[5] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n52 ) , .Y ( n15 ) ) ;
FADDX1_RVT U61 ( .A ( Count[4] ) , .B ( HFSNET_1 ) , .CI ( n53 ) , 
    .CO ( n51 ) , .S ( n54 ) ) ;
AO22X1_RVT U62 ( .A1 ( Count[4] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n54 ) , .Y ( n16 ) ) ;
FADDX1_RVT U63 ( .A ( Count[3] ) , .B ( HFSNET_1 ) , .CI ( n55 ) , 
    .CO ( n53 ) , .S ( n57 ) ) ;
AO22X1_RVT U64 ( .A1 ( Count[3] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n57 ) , .Y ( n17 ) ) ;
FADDX1_RVT U65 ( .A ( Count[2] ) , .B ( HFSNET_1 ) , .CI ( n59 ) , 
    .CO ( n55 ) , .S ( n61 ) ) ;
AO22X1_RVT U66 ( .A1 ( Count[2] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n61 ) , .Y ( n18 ) ) ;
FADDX1_RVT U67 ( .A ( Count[1] ) , .B ( HFSNET_1 ) , .CI ( Count[0] ) , 
    .CO ( n59 ) , .S ( n63 ) ) ;
AO22X1_RVT U68 ( .A1 ( Count[1] ) , .A2 ( HFSNET_3 ) , .A3 ( n64 ) , 
    .A4 ( n63 ) , .Y ( n19 ) ) ;
AO22X1_RVT U69 ( .A1 ( n24 ) , .A2 ( n64 ) , .A3 ( Count[0] ) , 
    .A4 ( HFSNET_3 ) , .Y ( n20 ) ) ;
endmodule


