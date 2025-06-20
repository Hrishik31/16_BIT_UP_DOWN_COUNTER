/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Thu Jun  5 11:36:04 2025
/////////////////////////////////////////////////////////////


module up_down_counter_16bit ( Clock, Reset, Enable, Up_Down, Count );
  output [15:0] Count;
  input Clock, Reset, Enable, Up_Down;
  wire   \count_next[0] , n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;

  DFFX1_RVT \Count_reg[15]  ( .D(n5), .CLK(Clock), .Q(Count[15]) );
  DFFX1_RVT \Count_reg[14]  ( .D(n6), .CLK(Clock), .Q(Count[14]) );
  DFFX1_RVT \Count_reg[13]  ( .D(n7), .CLK(Clock), .Q(Count[13]) );
  DFFX1_RVT \Count_reg[12]  ( .D(n8), .CLK(Clock), .Q(Count[12]) );
  DFFX1_RVT \Count_reg[11]  ( .D(n9), .CLK(Clock), .Q(Count[11]) );
  DFFX1_RVT \Count_reg[10]  ( .D(n10), .CLK(Clock), .Q(Count[10]) );
  DFFX1_RVT \Count_reg[9]  ( .D(n11), .CLK(Clock), .Q(Count[9]) );
  DFFX1_RVT \Count_reg[8]  ( .D(n12), .CLK(Clock), .Q(Count[8]) );
  DFFX1_RVT \Count_reg[7]  ( .D(n13), .CLK(Clock), .Q(Count[7]) );
  DFFX1_RVT \Count_reg[6]  ( .D(n14), .CLK(Clock), .Q(Count[6]) );
  DFFX1_RVT \Count_reg[5]  ( .D(n15), .CLK(Clock), .Q(Count[5]) );
  DFFX1_RVT \Count_reg[4]  ( .D(n16), .CLK(Clock), .Q(Count[4]) );
  DFFX1_RVT \Count_reg[3]  ( .D(n17), .CLK(Clock), .Q(Count[3]) );
  DFFX1_RVT \Count_reg[2]  ( .D(n18), .CLK(Clock), .Q(Count[2]) );
  DFFX1_RVT \Count_reg[1]  ( .D(n19), .CLK(Clock), .Q(Count[1]) );
  DFFX1_RVT \Count_reg[0]  ( .D(n20), .CLK(Clock), .Q(Count[0]), .QN(
        \count_next[0] ) );
  INVX0_RVT U24 ( .A(Enable), .Y(n22) );
  INVX0_RVT U25 ( .A(n22), .Y(n23) );
  INVX0_RVT U26 ( .A(Reset), .Y(n24) );
  INVX0_RVT U27 ( .A(n24), .Y(n25) );
  INVX0_RVT U28 ( .A(n33), .Y(n66) );
  INVX0_RVT U29 ( .A(n33), .Y(n69) );
  INVX0_RVT U30 ( .A(n57), .Y(n33) );
  INVX0_RVT U31 ( .A(n40), .Y(n68) );
  INVX0_RVT U32 ( .A(n40), .Y(n67) );
  NBUFFX2_RVT U33 ( .A(n29), .Y(n62) );
  INVX0_RVT U34 ( .A(n29), .Y(n64) );
  OR2X1_RVT U35 ( .A1(n23), .A2(n25), .Y(n40) );
  INVX0_RVT U36 ( .A(n29), .Y(n59) );
  NBUFFX2_RVT U37 ( .A(Up_Down), .Y(n29) );
  INVX2_RVT U38 ( .A(n62), .Y(n26) );
  INVX2_RVT U39 ( .A(n62), .Y(n27) );
  INVX0_RVT U40 ( .A(n25), .Y(n28) );
  AND2X1_RVT U41 ( .A1(n23), .A2(n28), .Y(n57) );
  XOR2X1_RVT U42 ( .A1(n26), .A2(Count[15]), .Y(n30) );
  XOR2X1_RVT U43 ( .A1(n31), .A2(n30), .Y(n32) );
  AO22X1_RVT U44 ( .A1(Count[15]), .A2(n68), .A3(n32), .A4(n69), .Y(n5) );
  FADDX1_RVT U45 ( .A(Count[14]), .B(n27), .CI(n34), .CO(n31), .S(n35) );
  AO22X1_RVT U46 ( .A1(Count[14]), .A2(n68), .A3(n66), .A4(n35), .Y(n6) );
  FADDX1_RVT U47 ( .A(Count[13]), .B(n64), .CI(n36), .CO(n34), .S(n37) );
  AO22X1_RVT U48 ( .A1(Count[13]), .A2(n68), .A3(n57), .A4(n37), .Y(n7) );
  FADDX1_RVT U49 ( .A(Count[12]), .B(n26), .CI(n38), .CO(n36), .S(n39) );
  AO22X1_RVT U50 ( .A1(Count[12]), .A2(n68), .A3(n69), .A4(n39), .Y(n8) );
  FADDX1_RVT U51 ( .A(Count[11]), .B(n27), .CI(n41), .CO(n38), .S(n42) );
  AO22X1_RVT U52 ( .A1(Count[11]), .A2(n67), .A3(n66), .A4(n42), .Y(n9) );
  FADDX1_RVT U53 ( .A(Count[10]), .B(n59), .CI(n43), .CO(n41), .S(n44) );
  AO22X1_RVT U54 ( .A1(Count[10]), .A2(n67), .A3(n57), .A4(n44), .Y(n10) );
  FADDX1_RVT U55 ( .A(Count[9]), .B(n26), .CI(n45), .CO(n43), .S(n46) );
  AO22X1_RVT U56 ( .A1(Count[9]), .A2(n67), .A3(n69), .A4(n46), .Y(n11) );
  FADDX1_RVT U57 ( .A(Count[8]), .B(n27), .CI(n47), .CO(n45), .S(n48) );
  AO22X1_RVT U58 ( .A1(Count[8]), .A2(n68), .A3(n66), .A4(n48), .Y(n12) );
  FADDX1_RVT U59 ( .A(Count[7]), .B(n64), .CI(n49), .CO(n47), .S(n50) );
  AO22X1_RVT U60 ( .A1(Count[7]), .A2(n67), .A3(n57), .A4(n50), .Y(n13) );
  FADDX1_RVT U61 ( .A(Count[6]), .B(n26), .CI(n51), .CO(n49), .S(n52) );
  AO22X1_RVT U62 ( .A1(Count[6]), .A2(n67), .A3(n69), .A4(n52), .Y(n14) );
  FADDX1_RVT U63 ( .A(Count[5]), .B(n27), .CI(n53), .CO(n51), .S(n54) );
  AO22X1_RVT U64 ( .A1(Count[5]), .A2(n67), .A3(n66), .A4(n54), .Y(n15) );
  FADDX1_RVT U65 ( .A(Count[4]), .B(n59), .CI(n55), .CO(n53), .S(n56) );
  AO22X1_RVT U66 ( .A1(Count[4]), .A2(n68), .A3(n57), .A4(n56), .Y(n16) );
  FADDX1_RVT U67 ( .A(Count[3]), .B(n26), .CI(n58), .CO(n55), .S(n60) );
  AO22X1_RVT U68 ( .A1(Count[3]), .A2(n67), .A3(n69), .A4(n60), .Y(n17) );
  FADDX1_RVT U69 ( .A(Count[2]), .B(n27), .CI(n61), .CO(n58), .S(n63) );
  AO22X1_RVT U70 ( .A1(Count[2]), .A2(n68), .A3(n66), .A4(n63), .Y(n18) );
  FADDX1_RVT U71 ( .A(Count[1]), .B(n64), .CI(Count[0]), .CO(n61), .S(n65) );
  AO22X1_RVT U72 ( .A1(Count[1]), .A2(n67), .A3(n66), .A4(n65), .Y(n19) );
  AO22X1_RVT U73 ( .A1(\count_next[0] ), .A2(n69), .A3(Count[0]), .A4(n68), 
        .Y(n20) );
endmodule

