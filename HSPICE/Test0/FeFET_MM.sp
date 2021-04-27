**Description**
*Joshua Mayersky
* Neuromorphic Computers for AI Class
*FeFET Matrix Multiplication Accelleration

**Parameters**

**Device Models**
*FeFET threshold variations
*Low VT: LOGIC 1
.MODEL nfet0 NMOS LEVEL=54 VTHO=0.1
.MODEL pfet0 PMOS LEVEL=54 VTHO=-0.1

*High VT: LOGIC 0
.MODEL nfet1 NMOS LEVEL=54 VTHO=0.90
.MODEL pfet1 PMOS LEVEL=54 VTHO=-0.90

*General models for other CMOS circuitry, VTH = 0.15*VDD
.MODEL nfet2 NMOS LEVEL=54 VTHO=0.15
.MODEL pfet2 PMOS LEVEL=54 VTHO=-0.15

**Voltage Definitions**
.GLOBAL VDD GND
Vsupply VDD 0 1
Vground GND 0 0
Vsl0-0 sl0-0 0 1
Vsl0-1 sl0-1 0 1
Vsl0-2 sl0-2 0 1
Vsl0-3 sl0-3 0 1
Vsl0-4 sl0-4 0 1
Vsl0-5 sl0-5 0 1
Vsl0-6 sl0-6 0 1
Vsl0-7 sl0-7 0 1
Vsl0-8 sl0-8 0 1
Vsl0-9 sl0-9 0 1
Vsl0-10 sl0-10 0 1
Vsl0-11 sl0-11 0 1
Vsl0-12 sl0-12 0 1
Vsl0-13 sl0-13 0 1
Vsl0-14 sl0-14 0 1
Vsl0-15 sl0-15 0 1

Vsl1-0 sl1-0 0 1
Vsl1-1 sl1-1 0 1
Vsl1-2 sl1-2 0 1
Vsl1-3 sl1-3 0 1
Vsl1-4 sl1-4 0 1
Vsl1-5 sl1-5 0 1
Vsl1-6 sl1-6 0 1
Vsl1-7 sl1-7 0 1
Vsl1-8 sl1-8 0 1
Vsl1-9 sl1-9 0 1
Vsl1-10 sl1-10 0 1
Vsl1-11 sl1-11 0 1
Vsl1-12 sl1-12 0 1
Vsl1-13 sl1-13 0 1
Vsl1-14 sl1-14 0 1
Vsl1-15 sl1-15 0 1

Vsl2-0 sl2-0 0 1
Vsl2-1 sl2-1 0 1
Vsl2-2 sl2-2 0 1
Vsl2-3 sl2-3 0 1
Vsl2-4 sl2-4 0 1
Vsl2-5 sl2-5 0 1
Vsl2-6 sl2-6 0 1
Vsl2-7 sl2-7 0 1
Vsl2-8 sl2-8 0 1
Vsl2-9 sl2-9 0 1
Vsl2-10 sl2-10 0 1
Vsl2-11 sl2-11 0 1
Vsl2-12 sl2-12 0 1
Vsl2-13 sl2-13 0 1
Vsl2-14 sl2-14 0 1
Vsl2-15 sl2-15 0 1

Vsl3-0 sl3-0 0 1
Vsl3-1 sl3-1 0 1
Vsl3-2 sl3-2 0 1
Vsl3-3 sl3-3 0 1
Vsl3-4 sl3-4 0 1
Vsl3-5 sl3-5 0 1
Vsl3-6 sl3-6 0 1
Vsl3-7 sl3-7 0 1
Vsl3-8 sl3-8 0 1
Vsl3-9 sl3-9 0 1
Vsl3-10 sl3-10 0 1
Vsl3-11 sl3-11 0 1
Vsl3-12 sl3-12 0 1
Vsl3-13 sl3-13 0 1
Vsl3-14 sl3-14 0 1
Vsl3-15 sl3-15 0 1

*First input
Vin0-0 in0-0 0 0
Vin0-1 in0-1 0 1
Vin0-2 in0-2 0 1
Vin0-3 in0-3 0 1
Vin0-4 in0-4 0 1
Vin0-5 in0-5 0 1
Vin0-6 in0-6 0 1
Vin0-7 in0-7 0 1
Vin0-8 in0-8 0 0
Vin0-9 in0-9 0 0
Vin0-10 in0-10 0 0
Vin0-11 in0-11 0 0
Vin0-12 in0-12 0 0
Vin0-13 in0-13 0 0
Vin0-14 in0-14 0 0
Vin0-15 in0-15 0 0

*Second input
Vin1-0 in1-0 0 0
Vin1-1 in1-1 0 0
Vin1-2 in1-2 0 0
Vin1-3 in1-3 0 0
Vin1-4 in1-4 0 0
Vin1-5 in1-5 0 0
Vin1-6 in1-6 0 0
Vin1-7 in1-7 0 0
Vin1-8 in1-8 0 0
Vin1-9 in1-9 0 0
Vin1-10 in1-10 0 0
Vin1-11 in1-11 0 0
Vin1-12 in1-12 0 0
Vin1-13 in1-13 0 0
Vin1-14 in1-14 0 0
Vin1-15 in1-15 0 0

*First bias
Vbi0-0 bi0-0 0 1
Vbi0-1 bi0-1 0 1
Vbi0-2 bi0-2 0 0
Vbi0-3 bi0-3 0 1
Vbi0-4 bi0-4 0 1
Vbi0-5 bi0-5 0 1
Vbi0-6 bi0-6 0 0
Vbi0-7 bi0-7 0 0
Vbi0-8 bi0-8 0 0
Vbi0-9 bi0-9 0 1
Vbi0-10 bi0-10 0 1
Vbi0-11 bi0-11 0 1
Vbi0-12 bi0-12 0 0
Vbi0-13 bi0-13 0 0
Vbi0-14 bi0-14 0 0
Vbi0-15 bi0-15 0 0

*Second bias
Vbi1-0 bi1-0 0 0
Vbi1-1 bi1-1 0 0
Vbi1-2 bi1-2 0 0
Vbi1-3 bi1-3 0 0
Vbi1-4 bi1-4 0 1
Vbi1-5 bi1-5 0 1
Vbi1-6 bi1-6 0 0
Vbi1-7 bi1-7 0 0
Vbi1-8 bi1-8 0 1
Vbi1-9 bi1-9 0 1
Vbi1-10 bi1-10 0 1
Vbi1-11 bi1-11 0 1
Vbi1-12 bi1-12 0 1
Vbi1-13 bi1-13 0 1
Vbi1-14 bi1-14 0 0
Vbi1-15 bi1-15 0 0

*Third bias
Vbi2-0 bi2-0 0 0
Vbi2-1 bi2-1 0 1
Vbi2-2 bi2-2 0 0
Vbi2-3 bi2-3 0 0
Vbi2-4 bi2-4 0 0
Vbi2-5 bi2-5 0 0
Vbi2-6 bi2-6 0 0
Vbi2-7 bi2-7 0 1
Vbi2-8 bi2-8 0 1
Vbi2-9 bi2-9 0 1
Vbi2-10 bi2-10 0 1
Vbi2-11 bi2-11 0 0
Vbi2-12 bi2-12 0 1
Vbi2-13 bi2-13 0 1
Vbi2-14 bi2-14 0 0
Vbi2-15 bi2-15 0 0

*Fourth bias
Vbi3-0 bi3-0 0 0
Vbi3-1 bi3-1 0 0
Vbi3-2 bi3-2 0 0
Vbi3-3 bi3-3 0 1
Vbi3-4 bi3-4 0 1
Vbi3-5 bi3-5 0 1
Vbi3-6 bi3-6 0 0
Vbi3-7 bi3-7 0 0
Vbi3-8 bi3-8 0 1
Vbi3-9 bi3-9 0 1
Vbi3-10 bi3-10 0 0
Vbi3-11 bi3-11 0 1
Vbi3-12 bi3-12 0 1
Vbi3-13 bi3-13 0 0
Vbi3-14 bi3-14 0 0
Vbi3-15 bi3-15 0 0

**Circuit Definitions**
*Low threshold voltage FeFET (logic 1)
.subckt n-fefet-LVT d g s
MN1 d g s GND nfet0 L=45n W=120n
.ends

*High threshold voltage FeFET (logic 0)
.subckt n-fefet-HVT d g s
MN1 d g s GND nfet1 L=45n W=120n
.ends

*T-gate 
.subckt T in out
M0 out VDD in GND nfet2 L=45n W=120n
M1 out GND in VDD pfet2 L=45n W=240n
Cout out GND 5fF
.ends

*Inverter gate
.subckt INV in out
M0 out in GND GND nfet2 L=45n W=120n
M1 out in VDD VDD pfet2 L=45n W=240n
Cout out GND 5fF
.ends

*2-input NOR gate
.subckt NOR2 a b out
M0 out a GND GND nfet2 L=45n W=200n
M1 out b GND GND nfet2 L=45n W=200n
M2 out a node1 VDD pfet2 L=45n W=500n
M3 node1 b VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
Cout out GND 5fF
.ends

*2-input NAND gate
.subckt NAND2 a b out
M0 out a node1 GND nfet2 L=45n W=120n
M1 node1 b GND GND nfet2 L=45n W=120n
M2 out a VDD VDD pfet2 L=45n W=240n
M3 out b VDD VDD pfet2 L=45n W=240n
C1 node1 GND 5fF
Cout out GND 5fF
.ends

*3-input NOR gate
.subckt NOR3 a b c out
M0 out a GND GND nfet2 L=45n W=300n
M1 out b GND GND nfet2 L=45n W=300n
M2 out c GND GND nfet2 L=45n W=300n
M3 out a node1 VDD pfet2 L=45n W=500n
M4 node1 b node2 VDD pfet2 L=45n W=500n
M5 node2 c VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
C2 node2 GND 5fF
Cout out GND 5fF
.ends

*3-input NAND gate
.subckt NAND3 a b c out
M0 out a node1 GND nfet2 L=45n W=200n
M1 node1 b node2 GND nfet2 L=45n W=200n
M2 node2 c GND GND nfet2 L=45n W=200n
M3 out a VDD VDD pfet2 L=45n W=500n
M4 out b VDD VDD pfet2 L=45n W=500n
M5 out c VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
C2 node2 GND 5fF
Cout out GND 5fF
.ends

*4-input NAND gate
.subckt NAND4 a b c d out
MN0 out a node1 GND nfet2 L=45n W=200n
MN1 node1 b node2 GND nfet2 L=45n W=200n
MN2 node2 c node3 GND nfet2 L=45n W=200n
MN3 node3 d GND GND nfet2 L=45n W=200n
MP0 out a VDD VDD pfet2 L=45n W=500n
MP1 out b VDD VDD pfet2 L=45n W=500n
MP2 out c VDD VDD pfet2 L=45n W=500n
MP3 out d VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
C2 node2 GND 5fF
C3 node3 GND 5fF
Cout out GND 5fF
.ends

*5-input NAND gate
.subckt NAND5 a b c d e out
MN0 out a node1 GND nfet2 L=45n W=250n
MN1 node1 b node2 GND nfet2 L=45n W=250n
MN2 node2 c node3 GND nfet2 L=45n W=250n
MN3 node3 d node4 GND nfet2 L=45n W=250n
MN4 node4 e GND GND nfet2 L=45n W=250n
MP0 out a VDD VDD pfet2 L=45n W=500n
MP1 out b VDD VDD pfet2 L=45n W=500n
MP2 out c VDD VDD pfet2 L=45n W=500n
MP3 out d VDD VDD pfet2 L=45n W=500n
MP4 out e VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
C2 node2 GND 5fF
C3 node3 GND 5fF
C4 node4 GND 5fF
Cout out GND 5fF
.ends

*6-input NAND gate
.subckt NAND6 a b c d e f out
MN0 out a node1 GND nfet2 L=45n W=250n
MN1 node1 b node2 GND nfet2 L=45n W=250n
MN2 node2 c node3 GND nfet2 L=45n W=250n
MN3 node3 d node4 GND nfet2 L=45n W=250n
MN4 node4 e node5 GND nfet2 L=45n W=250n
MN5 node5 f GND GND nfet2 L=45n W=250n
MP0 out a VDD VDD pfet2 L=45n W=500n
MP1 out b VDD VDD pfet2 L=45n W=500n
MP2 out c VDD VDD pfet2 L=45n W=500n
MP3 out d VDD VDD pfet2 L=45n W=500n
MP4 out e VDD VDD pfet2 L=45n W=500n
MP5 out f VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
C2 node2 GND 5fF
C3 node3 GND 5fF
C4 node4 GND 5fF
C5 node5 GND 5fF
Cout out GND 5fF
.ends

*16-input NAND gate
.subckt NAND16 a b c d e f g h i j k l m n o p out
MN0 out a node1 GND nfet2 L=45n W=250n
MN1 node1 b node2 GND nfet2 L=45n W=250n
MN2 node2 c node3 GND nfet2 L=45n W=250n
MN3 node3 d node4 GND nfet2 L=45n W=250n
MN4 node4 e node5 GND nfet2 L=45n W=250n
MN5 node5 f node6 GND nfet2 L=45n W=250n
MN6 node6 g node7 GND nfet2 L=45n W=250n
MN7 node7 h node8 GND nfet2 L=45n W=250n
MN8 node8 i node9 GND nfet2 L=45n W=250n
MN9 node9 j node10 GND nfet2 L=45n W=250n
MN10 node10 k node11 GND nfet2 L=45n W=250n
MN11 node11 l node12 GND nfet2 L=45n W=250n
MN12 node12 m node13 GND nfet2 L=45n W=250n
MN13 node13 n node14 GND nfet2 L=45n W=250n
MN14 node14 o node15 GND nfet2 L=45n W=250n
MN15 node15 p GND GND nfet2 L=45n W=250n
MP0 out a VDD VDD pfet2 L=45n W=500n
MP1 out b VDD VDD pfet2 L=45n W=500n
MP2 out c VDD VDD pfet2 L=45n W=500n
MP3 out d VDD VDD pfet2 L=45n W=500n
MP4 out e VDD VDD pfet2 L=45n W=500n
MP5 out f VDD VDD pfet2 L=45n W=500n
MP6 out g VDD VDD pfet2 L=45n W=500n
MP7 out h VDD VDD pfet2 L=45n W=500n
MP8 out i VDD VDD pfet2 L=45n W=500n
MP9 out j VDD VDD pfet2 L=45n W=500n
MP10 out k VDD VDD pfet2 L=45n W=500n
MP11 out l VDD VDD pfet2 L=45n W=500n
MP12 out m VDD VDD pfet2 L=45n W=500n
MP13 out n VDD VDD pfet2 L=45n W=500n
MP14 out o VDD VDD pfet2 L=45n W=500n
MP15 out p VDD VDD pfet2 L=45n W=500n
C1 node1 GND 1fF
C2 node2 GND 1fF
C3 node3 GND 1fF
C4 node4 GND 1fF
C5 node5 GND 1fF
C6 node6 GND 1fF
C7 node7 GND 1fF
C8 node8 GND 1fF
C9 node9 GND 1fF
C10 node10 GND 1fF
C11 node11 GND 1fF
C12 node12 GND 1fF
C13 node13 GND 1fF
C14 node14 GND 1fF
C15 node15 GND 1fF
Cout out GND 5fF
.ends

*2-input XOR gate
.subckt XOR2 a b out
X0-inv a ap INV
X1-inv b bp INV
MN0 out a node1 GND nfet2 L=45n W=200n
MN1 node1 b GND GND nfet2 L=45n W=200n
MN2 out ap node2 GND nfet2 L=45n W=200n
MN3 node2 bp GND GND nfet2 L=45n W=200n
MP0 out ap node3 VDD pfet2 L=45n W=500n
MP1 node3 b VDD VDD pfet2 L=45n W=500n
MP2 out a node4 VDD pfet2 L=45n W=500n
MP3 node4 bp VDD VDD pfet2 L=45n W=500n
C1 node1 GND 5fF
C2 node2 GND 5fF
C3 node3 GND 5fF
C4 node4 GND 5fF
Cout out GND 5fF
.ends

*Buffer
.subckt BUF in0 out
X0-inv in0 inp0 INV
X1-inv inp0 in1 INV
X2-inv in1 inp1 INV
X3-inv inp1 in2 INV
X4-inv in2 inp2 INV
X5-inv inp2 in3 INV
X6-inv in3 inp3 INV
X7-inv inp3 in4 INV
X8-inv in4 inp4 INV
X9-inv inp4 in5 INV
X10-inv in5 inp5 INV
X11-inv inp5 in6 INV
X12-inv in6 inp6 INV
X13-inv inp6 in7 INV
X14-inv in7 inp7 INV
X15-inv inp7 in8 INV
X16-inv in8 inp8 INV
X17-inv inp8 in9 INV
X18-inv in9 inp9 INV
X19-inv inp9 in10 INV
X20-inv in10 inp10 INV
X21-inv inp10 out INV
.ends

*Sense-amplifier
.subckt SA se in out
X0-inv se sep INV
X1-inv in inp INV

MP0 outp se VDD VDD pfet2 L=45n W=500n
MP1 outp out VDD VDD pfet2 L=45n W=500n
MP2 out outp VDD VDD pfet2 L=45n W=500n
MP3 out se VDD VDD pfet2 L=45n W=500n
MP4 node3 sep in VDD pfet2 L=45n W=500n
MP5 node4 sep inp VDD pfet2 L=45n W=500n

MN0 outp out node1 GND nfet2 L=45n W=200n
MN1 out outp node2 GND nfet2 L=45n W=200n
MN2 node1 node3 GND GND nfet2 L=45n W=200n
MN3 node2 node4 GND GND nfet2 L=45n W=200n
MN4 node3 sep GND GND nfet2 L=45n W=200n
MN5 node4 sep GND GND nfet2 L=45n W=200n

C1 node1 GND 5fF
C2 node2 GND 5fF
C3 node3 GND 5fF
C4 node4 GND 5fF
Cout out GND 5fF
Coutp outp GND 5fF
.ends

*D-flip flop
.subckt DFF0 clk r d q qp
X0-nand2 d r node2 node1 NAND3
X1-nand2 clk r node4 node3 NAND3
X2-nand2 node1 node3 node4 NAND2
X3-nand2 node2 r q qp NAND3
X4-nand2 node3 qp q NAND2
X0-nand3 clk node1 node3 node2 NAND3
Cq q GND 5fF
Cqp qp GND 5fF
.ends

*D-flip flop, higher output capacitance to deter hold/set-up time violations
.subckt DFF1 clk r d q qp
X0-nand2 d r node2 node1 NAND3
X1-nand2 clk r node4 node3 NAND3
X2-nand2 node1 node3 node4 NAND2
X3-nand2 node2 r q qp NAND3
X4-nand2 node3 qp q NAND2
X0-nand3 clk node1 node3 node2 NAND3
Cq q GND 50fF
Cqp qp GND 50fF
.ends

*T-flip flop
.subckt TFF clk r t q qp
X0-inv t tp INV
X0-nand2 q tp node1 NAND2
X1-nand2 qp t node2 NAND2
X2-nand2 node1 node2 d NAND2
X0-dff clk r d q qp DFF0
.ends

*First counter type, binary synchronous counter, 2bit output
.subckt COUNTER-BSC clk r in c0 c1 cp0 cp1
X0-nand2 in c0 node1 NAND2
X0-inv node1 node2 INV
X0-tff clk r in c0 cp0 TFF
X1-tff clk r node2 c1 cp1 TFF
.ends

*Second counter type, binary ripple-counter, 3bit output
.subckt COUNTER-BRC0 r in c0 c1 c2 cp0 cp1 cp2
X0-tff in r VDD c0 cp0 TFF
X1-tff cp0 r VDD c1 cp1 TFF
X2-tff cp1 r VDD c2 cp2 TFF
.ends

*Third counter type, binary ripple-counter, 4 bit output
.subckt COUNTER-BRC1 r in c0 c1 c2 c3 cp0 cp1 cp2 cp3
X0-tff in r VDD c0 cp0 TFF
X1-tff cp0 r VDD c1 cp1 TFF
X2-tff cp1 r VDD c2 cp2 TFF
X3-tff cp2 r VDD c3 cp3 TFF
.ends

*Full-adder, 1bit + 1bit
.subckt FA1B a b cin s cout
X0-xor2 a b node1 XOR2
X1-xor2 node1 cin s XOR2
X0-nand2 node1 cin node2 NAND2
X1-nand2 a b node3 NAND2
X2-nand2 node2 node3 cout NAND2
.ends

*Half-adder, 1bit + 1bit
.subckt HA1B a b s cout
X0-xor2 a b s XOR2
X0-nand2 a b node1 NAND2
X0-inv node1 cout INV
.ends


*Adder circuit at outputs of bit-line sense amplifier coutners
.subckt SAADDER csa0-0 csa0-1 csa1-0 csa1-1 csa2-0 csa2-1 csa3-0 csa3-1 csa4-0 csa4-1 csa5-0 csa5-1 csa6-0 csa6-1 csa7-0 csa7-1 csa8-0 csa8-1 csa9-0 csa9-1 csa10-0 csa10-1 csa11-0 csa11-1 csa12-0 csa12-1 csa13-0 csa13-1 csa14-0 csa14-1 csa15-0 csa15-1 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16
*First bit (from the addition) and carry-out
X0-ha csa0-1 csa1-0 s0 cout0 HA1B
X0-fa GND csa1-1 cout0 t0-0 t0-1 FA1B

*Second addition bit
X1-ha t0-0 csa2-0 s1 cout1 HA1B
X1-fa t0-1 csa2-1 cout1 t1-0 t1-1 FA1B

*Third addition bit
X2-ha t1-0 csa3-0 s2 cout2 HA1B
X2-fa t1-1 csa3-1 cout2 t2-0 t2-1 FA1B

*Fourth addition bit
X3-ha t2-0 csa4-0 s3 cout3 HA1B
X3-fa t2-1 csa4-1 cout3 t3-0 t3-1 FA1B

*Fifth addition bit
X4-ha t3-0 csa5-0 s4 cout4 HA1B
X4-fa t3-1 csa5-1 cout4 t4-0 t4-1 FA1B

*Sixth addition bit
X5-ha t4-0 csa6-0 s5 cout5 HA1B
X5-fa t4-1 csa6-1 cout5 t5-0 t5-1 FA1B

*Seventh addition bit
X6-ha t5-0 csa7-0 s6 cout6 HA1B
X6-fa t5-1 csa7-1 cout6 t6-0 t6-1 FA1B

*Eighth addition bit
X7-ha t6-0 csa8-0 s7 cout7 HA1B
X7-fa t6-1 csa8-1 cout7 t7-0 t7-1 FA1B

*Ninth addition bit
X8-ha t7-0 csa9-0 s8 cout8 HA1B
X8-fa t7-1 csa9-1 cout8 t8-0 t8-1 FA1B

*Tenth addition bit
X9-ha t8-0 csa10-0 s9 cout9 HA1B
X9-fa t8-1 csa10-1 cout9 t9-0 t9-1 FA1B

*Eleventh addition bit
X10-ha t9-0 csa11-0 s10 cout10 HA1B
X10-fa t9-1 csa11-1 cout10 t10-0 t10-1 FA1B

*Twelfth addition bit
X11-ha t10-0 csa12-0 s11 cout11 HA1B
X11-fa t10-1 csa12-1 cout11 t11-0 t11-1 FA1B

*Thirteenth addition bit
X12-ha t11-0 csa13-0 s12 cout12 HA1B
X12-fa t11-1 csa13-1 cout12 t12-0 t12-1 FA1B

*Fourteenth addition bit
X13-ha t12-0 csa14-0 s13 cout13 HA1B
X13-fa t12-1 csa14-1 cout13 t13-0 t13-1 FA1B

*Fifteenth addition bit
X14-ha t13-0 csa15-0 s14 cout14 HA1B
X14-fa t13-1 csa15-1 cout14 s15 s16 FA1B
.ends

*Adder for the final biasing
.subckt ADDER35 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35
X0-ha a0 b0 s0 c0 HA1B
X1-fa a1 b1 c0 s1 c1 FA1B
X2-fa a2 b2 c1 s2 c2 FA1B
X3-fa a3 b3 c2 s3 c3 FA1B
X4-fa a4 b4 c3 s4 c4 FA1B
X5-fa a5 b5 c4 s5 c5 FA1B
X6-fa a6 b6 c5 s6 c6 FA1B
X7-fa a7 b7 c6 s7 c7 FA1B
X8-fa a8 b8 c7 s8 c8 FA1B
X9-fa a9 b9 c8 s9 c9 FA1B
X10-fa a10 b10 c9 s10 c10 FA1B
X11-fa a11 b11 c10 s11 c11 FA1B
X12-fa a12 b12 c11 s12 c12 FA1B
X13-fa a13 b13 c12 s13 c13 FA1B
X14-fa a14 b14 c13 s14 c14 FA1B
X15-fa a15 b15 c14 s15 c15 FA1B
X16-ha a16 c15 s16 c16 HA1B
X17-ha a17 c16 s17 c17 HA1B
X18-ha a18 c17 s18 c18 HA1B
X19-ha a19 c18 s19 c19 HA1B
X20-ha a20 c19 s20 c20 HA1B
X21-ha a21 c20 s21 c21 HA1B
X22-ha a22 c21 s22 c22 HA1B
X23-ha a23 c22 s23 c23 HA1B
X24-ha a24 c23 s24 c24 HA1B
X25-ha a25 c24 s25 c25 HA1B
X26-ha a26 c25 s26 c26 HA1B
X27-ha a27 c26 s27 c27 HA1B
X28-ha a28 c27 s28 c28 HA1B
X29-ha a29 c28 s29 c29 HA1B
X30-ha a30 c29 s30 c30 HA1B
X31-ha a31 c30 s31 c31 HA1B
X32-ha a32 c31 s32 c32 HA1B
X33-ha a33 c32 s33 c33 HA1B
X34-ha a34 c33 s34 s35 HA1B
.ends

*19bit + 18bit adder for the multiplier
.subckt ADDER18 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19
X0-ha a0 Vground s0 c0 HA1B
X1-fa a1 b0 c0 s1 c1 FA1B
X2-fa a2 b1 c1 s2 c2 FA1B
X3-fa a3 b2 c2 s3 c3 FA1B
X4-fa a4 b3 c3 s4 c4 FA1B
X5-fa a5 b4 c4 s5 c5 FA1B
X6-fa a6 b5 c5 s6 c6 FA1B
X7-fa a7 b6 c6 s7 c7 FA1B
X8-fa a8 b7 c7 s8 c8 FA1B
X9-fa a9 b8 c8 s9 c9 FA1B
X10-fa a10 b9 c9 s10 c10 FA1B
X11-fa a11 b10 c10 s11 c11 FA1B
X12-fa a12 b11 c11 s12 c12 FA1B
X13-fa a13 b12 c12 s13 c13 FA1B
X14-fa a14 b13 c13 s14 c14 FA1B
X15-fa a15 b14 c14 s15 c15 FA1B
X16-fa a16 b15 c15 s16 c16 FA1B
X17-fa a17 b16 c16 s17 c17 FA1B
X18-fa a18 b17 c17 s18 s19 FA1B
.ends

*15bit AND gates to make the multiplier easier to implement
.subckt AND15 a b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia0 ia1 ia2 ia3 ia4 ia5 ia6 ia7 ia8 ia9 ia10 ia11 ia12 ia13 ia14 ia15
X0-nand2 a b0 na0 NAND2
X1-nand2 a b1 na1 NAND2
X2-nand2 a b2 na2 NAND2
X3-nand2 a b3 na3 NAND2
X4-nand2 a b4 na4 NAND2
X5-nand2 a b5 na5 NAND2
X6-nand2 a b6 na6 NAND2
X7-nand2 a b7 na7 NAND2
X8-nand2 a b8 na8 NAND2
X9-nand2 a b9 na9 NAND2
X10-nand2 a b10 na10 NAND2
X11-nand2 a b11 na11 NAND2
X12-nand2 a b12 na12 NAND2
X13-nand2 a b13 na13 NAND2
X14-nand2 a b14 na14 NAND2
X15-nand2 a b15 na15 NAND2

X0-inv na0 ia0 INV
X1-inv na1 ia1 INV
X2-inv na2 ia2 INV
X3-inv na3 ia3 INV
X4-inv na4 ia4 INV
X5-inv na5 ia5 INV
X6-inv na6 ia6 INV
X7-inv na7 ia7 INV
X8-inv na8 ia8 INV
X9-inv na9 ia9 INV
X10-inv na10 ia10 INV
X11-inv na11 ia11 INV
X12-inv na12 ia12 INV
X13-inv na13 ia13 INV
X14-inv na14 ia14 INV
X15-inv na15 ia15 INV
.ends

*Multiplier, 18bit x 16bit
.subckt MULT a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33
X0-and15 a0 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia0-0 ia0-1 ia0-2 ia0-3 ia0-4 ia0-5 ia0-6 ia0-7 ia0-8 ia0-9 ia0-10 ia0-11 ia0-12 ia0-13 ia0-14 ia0-15 AND15
X1-and15 a1 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia1-0 ia1-1 ia1-2 ia1-3 ia1-4 ia1-5 ia1-6 ia1-7 ia1-8 ia1-9 ia1-10 ia1-11 ia1-12 ia1-13 ia1-14 ia1-15 AND15
X2-and15 a2 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia2-0 ia2-1 ia2-2 ia2-3 ia2-4 ia2-5 ia2-6 ia2-7 ia2-8 ia2-9 ia2-10 ia2-11 ia2-12 ia2-13 ia2-14 ia2-15 AND15
X3-and15 a3 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia3-0 ia3-1 ia3-2 ia3-3 ia3-4 ia3-5 ia3-6 ia3-7 ia3-8 ia3-9 ia3-10 ia3-11 ia3-12 ia3-13 ia3-14 ia3-15 AND15
X4-and15 a4 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia4-0 ia4-1 ia4-2 ia4-3 ia4-4 ia4-5 ia4-6 ia4-7 ia4-8 ia4-9 ia4-10 ia4-11 ia4-12 ia4-13 ia4-14 ia4-15 AND15
X5-and15 a5 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia5-0 ia5-1 ia5-2 ia5-3 ia5-4 ia5-5 ia5-6 ia5-7 ia5-8 ia5-9 ia5-10 ia5-11 ia5-12 ia5-13 ia5-14 ia5-15 AND15
X6-and15 a6 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia6-0 ia6-1 ia6-2 ia6-3 ia6-4 ia6-5 ia6-6 ia6-7 ia6-8 ia6-9 ia6-10 ia6-11 ia6-12 ia6-13 ia6-14 ia6-15 AND15
X7-and15 a7 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia7-0 ia7-1 ia7-2 ia7-3 ia7-4 ia7-5 ia7-6 ia7-7 ia7-8 ia7-9 ia7-10 ia7-11 ia7-12 ia7-13 ia7-14 ia7-15 AND15
X8-and15 a8 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia8-0 ia8-1 ia8-2 ia8-3 ia8-4 ia8-5 ia8-6 ia8-7 ia8-8 ia8-9 ia8-10 ia8-11 ia8-12 ia8-13 ia8-14 ia8-15 AND15
X9-and15 a9 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia9-0 ia9-1 ia9-2 ia9-3 ia9-4 ia9-5 ia9-6 ia9-7 ia9-8 ia9-9 ia9-10 ia9-11 ia9-12 ia9-13 ia9-14 ia9-15 AND15
X10-and15 a10 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia10-0 ia10-1 ia10-2 ia10-3 ia10-4 ia10-5 ia10-6 ia10-7 ia10-8 ia10-9 ia10-10 ia10-11 ia10-12 ia10-13 ia10-14 ia10-15 AND15
X11-and15 a11 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia11-0 ia11-1 ia11-2 ia11-3 ia11-4 ia11-5 ia11-6 ia11-7 ia11-8 ia11-9 ia11-10 ia11-11 ia11-12 ia11-13 ia11-14 ia11-15 AND15
X12-and15 a12 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia12-0 ia12-1 ia12-2 ia12-3 ia12-4 ia12-5 ia12-6 ia12-7 ia12-8 ia12-9 ia12-10 ia12-11 ia12-12 ia12-13 ia12-14 ia12-15 AND15
X13-and15 a13 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia13-0 ia13-1 ia13-2 ia13-3 ia13-4 ia13-5 ia13-6 ia13-7 ia13-8 ia13-9 ia13-10 ia13-11 ia13-12 ia13-13 ia13-14 ia13-15 AND15
X14-and15 a14 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia14-0 ia14-1 ia14-2 ia14-3 ia14-4 ia14-5 ia14-6 ia14-7 ia14-8 ia14-9 ia14-10 ia14-11 ia14-12 ia14-13 ia14-14 ia14-15 AND15
X15-and15 a15 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia15-0 ia15-1 ia15-2 ia15-3 ia15-4 ia15-5 ia15-6 ia15-7 ia15-8 ia15-9 ia15-10 ia15-11 ia15-12 ia15-13 ia15-14 ia15-15 AND15
X16-and15 a16 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia16-0 ia16-1 ia16-2 ia16-3 ia16-4 ia16-5 ia16-6 ia16-7 ia16-8 ia16-9 ia16-10 ia16-11 ia16-12 ia16-13 ia16-14 ia16-15 AND15
X17-and15 a17 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 ia17-0 ia17-1 ia17-2 ia17-3 ia17-4 ia17-5 ia17-6 ia17-7 ia17-8 ia17-9 ia17-10 ia17-11 ia17-12 ia17-13 ia17-14 ia17-15 AND15

X0-adder18 ia0-0 ia1-0 ia2-0 ia3-0 ia4-0 ia5-0 ia6-0 ia7-0 ia8-0 ia9-0 ia10-0 ia11-0 ia12-0 ia13-0 ia14-0 ia15-0 ia16-0 ia17-0 Vground ia0-1 ia1-1 ia2-1 ia3-1 ia4-1 ia5-1 ia6-1 ia7-1 ia8-1 ia9-1 ia10-1 ia11-1 ia12-1 ia13-1 ia14-1 ia15-1 ia16-1 ia17-1 p0 t0-0 t1-0 t2-0 t3-0 t4-0 t5-0 t6-0 t7-0 t8-0 t9-0 t10-0 t11-0 t12-0 t13-0 t14-0 t15-0 t16-0 t17-0 t18-0 ADDER18

X1-adder18 t0-0 t1-0 t2-0 t3-0 t4-0 t5-0 t6-0 t7-0 t8-0 t9-0 t10-0 t11-0 t12-0 t13-0 t14-0 t15-0 t16-0 t17-0 t18-0 ia0-2 ia1-2 ia2-2 ia3-2 ia4-2 ia5-2 ia6-2 ia7-2 ia8-2 ia9-2 ia10-2 ia11-2 ia12-2 ia13-2 ia14-2 ia15-2 ia16-2 ia17-2 p1 t0-1 t1-1 t2-1 t3-1 t4-1 t5-1 t6-1 t7-1 t8-1 t9-1 t10-1 t11-1 t12-1 t13-1 t14-1 t15-1 t16-1 t17-1 t18-1 ADDER18

X2-adder18 t0-1 t1-1 t2-1 t3-1 t4-1 t5-1 t6-1 t7-1 t8-1 t9-1 t10-1 t11-1 t12-1 t13-1 t14-1 t15-1 t16-1 t17-1 t18-1 ia0-3 ia1-3 ia2-3 ia3-3 ia4-3 ia5-3 ia6-3 ia7-3 ia8-3 ia9-3 ia10-3 ia11-3 ia12-3 ia13-3 ia14-3 ia15-3 ia16-3 ia17-3 p2 t0-2 t1-2 t2-2 t3-2 t4-2 t5-2 t6-2 t7-2 t8-2 t9-2 t10-2 t11-2 t12-2 t13-2 t14-2 t15-2 t16-2 t17-2 t18-2 ADDER18

X3-adder18 t0-2 t1-2 t2-2 t3-2 t4-2 t5-2 t6-2 t7-2 t8-2 t9-2 t10-2 t11-2 t12-2 t13-2 t14-2 t15-2 t16-2 t17-2 t18-2 ia0-4 ia1-4 ia2-4 ia3-4 ia4-4 ia5-4 ia6-4 ia7-4 ia8-4 ia9-4 ia10-4 ia11-4 ia12-4 ia13-4 ia14-4 ia15-4 ia16-4 ia17-4 p3 t0-3 t1-3 t2-3 t3-3 t4-3 t5-3 t6-3 t7-3 t8-3 t9-3 t10-3 t11-3 t12-3 t13-3 t14-3 t15-3 t16-3 t17-3 t18-3 ADDER18

X4-adder18 t0-3 t1-3 t2-3 t3-3 t4-3 t5-3 t6-3 t7-3 t8-3 t9-3 t10-3 t11-3 t12-3 t13-3 t14-3 t15-3 t16-3 t17-3 t18-3 ia0-5 ia1-5 ia2-5 ia3-5 ia4-5 ia5-5 ia6-5 ia7-5 ia8-5 ia9-5 ia10-5 ia11-5 ia12-5 ia13-5 ia14-5 ia15-5 ia16-5 ia17-5 p4 t0-4 t1-4 t2-4 t3-4 t4-4 t5-4 t6-4 t7-4 t8-4 t9-4 t10-4 t11-4 t12-4 t13-4 t14-4 t15-4 t16-4 t17-4 t18-4 ADDER18

X5-adder18 t0-4 t1-4 t2-4 t3-4 t4-4 t5-4 t6-4 t7-4 t8-4 t9-4 t10-4 t11-4 t12-4 t13-4 t14-4 t15-4 t16-4 t17-4 t18-4 ia0-6 ia1-6 ia2-6 ia3-6 ia4-6 ia5-6 ia6-6 ia7-6 ia8-6 ia9-6 ia10-6 ia11-6 ia12-6 ia13-6 ia14-6 ia15-6 ia16-6 ia17-6 p5 t0-5 t1-5 t2-5 t3-5 t4-5 t5-5 t6-5 t7-5 t8-5 t9-5 t10-5 t11-5 t12-5 t13-5 t14-5 t15-5 t16-5 t17-5 t18-5 ADDER18

X6-adder18 t0-5 t1-5 t2-5 t3-5 t4-5 t5-5 t6-5 t7-5 t8-5 t9-5 t10-5 t11-5 t12-5 t13-5 t14-5 t15-5 t16-5 t17-5 t18-5 ia0-7 ia1-7 ia2-7 ia3-7 ia4-7 ia5-7 ia6-7 ia7-7 ia8-7 ia9-7 ia10-7 ia11-7 ia12-7 ia13-7 ia14-7 ia15-7 ia16-7 ia17-7 p6 t0-6 t1-6 t2-6 t3-6 t4-6 t5-6 t6-6 t7-6 t8-6 t9-6 t10-6 t11-6 t12-6 t13-6 t14-6 t15-6 t16-6 t17-6 t18-6 ADDER18

X7-adder18 t0-6 t1-6 t2-6 t3-6 t4-6 t5-6 t6-6 t7-6 t8-6 t9-6 t10-6 t11-6 t12-6 t13-6 t14-6 t15-6 t16-6 t17-6 t18-6 ia0-8 ia1-8 ia2-8 ia3-8 ia4-8 ia5-8 ia6-8 ia7-8 ia8-8 ia9-8 ia10-8 ia11-8 ia12-8 ia13-8 ia14-8 ia15-8 ia16-8 ia17-8 p7 t0-7 t1-7 t2-7 t3-7 t4-7 t5-7 t6-7 t7-7 t8-7 t9-7 t10-7 t11-7 t12-7 t13-7 t14-7 t15-7 t16-7 t17-7 t18-7 ADDER18

X8-adder18 t0-7 t1-7 t2-7 t3-7 t4-7 t5-7 t6-7 t7-7 t8-7 t9-7 t10-7 t11-7 t12-7 t13-7 t14-7 t15-7 t16-7 t17-7 t18-7 ia0-9 ia1-9 ia2-9 ia3-9 ia4-9 ia5-9 ia6-9 ia7-9 ia8-9 ia9-9 ia10-9 ia11-9 ia12-9 ia13-9 ia14-9 ia15-9 ia16-9 ia17-9 p8 t0-8 t1-8 t2-8 t3-8 t4-8 t5-8 t6-8 t7-8 t8-8 t9-8 t10-8 t11-8 t12-8 t13-8 t14-8 t15-8 t16-8 t17-8 t18-8 ADDER18

X9-adder18 t0-8 t1-8 t2-8 t3-8 t4-8 t5-8 t6-8 t7-8 t8-8 t9-8 t10-8 t11-8 t12-8 t13-8 t14-8 t15-8 t16-8 t17-8 t18-8 ia0-10 ia1-10 ia2-10 ia3-10 ia4-10 ia5-10 ia6-10 ia7-10 ia8-10 ia9-10 ia10-10 ia11-10 ia12-10 ia13-10 ia14-10 ia15-10 ia16-10 ia17-10 p9 t0-9 t1-9 t2-9 t3-9 t4-9 t5-9 t6-9 t7-9 t8-9 t9-9 t10-9 t11-9 t12-9 t13-9 t14-9 t15-9 t16-9 t17-9 t18-9 ADDER18

X10-adder18 t0-9 t1-9 t2-9 t3-9 t4-9 t5-9 t6-9 t7-9 t8-9 t9-9 t10-9 t11-9 t12-9 t13-9 t14-9 t15-9 t16-9 t17-9 t18-9 ia0-11 ia1-11 ia2-11 ia3-11 ia4-11 ia5-11 ia6-11 ia7-11 ia8-11 ia9-11 ia10-11 ia11-11 ia12-11 ia13-11 ia14-11 ia15-11 ia16-11 ia17-11 p10 t0-10 t1-10 t2-10 t3-10 t4-10 t5-10 t6-10 t7-10 t8-10 t9-10 t10-10 t11-10 t12-10 t13-10 t14-10 t15-10 t16-10 t17-10 t18-10 ADDER18

X11-adder18 t0-10 t1-10 t2-10 t3-10 t4-10 t5-10 t6-10 t7-10 t8-10 t9-10 t10-10 t11-10 t12-10 t13-10 t14-10 t15-10 t16-10 t17-10 t18-10 ia0-12 ia1-12 ia2-12 ia3-12 ia4-12 ia5-12 ia6-12 ia7-12 ia8-12 ia9-12 ia10-12 ia11-12 ia12-12 ia13-12 ia14-12 ia15-12 ia16-12 ia17-12 p11 t0-11 t1-11 t2-11 t3-11 t4-11 t5-11 t6-11 t7-11 t8-11 t9-11 t10-11 t11-11 t12-11 t13-11 t14-11 t15-11 t16-11 t17-11 t18-11 ADDER18

X12-adder18 t0-11 t1-11 t2-11 t3-11 t4-11 t5-11 t6-11 t7-11 t8-11 t9-11 t10-11 t11-11 t12-11 t13-11 t14-11 t15-11 t16-11 t17-11 t18-11 ia0-13 ia1-13 ia2-13 ia3-13 ia4-13 ia5-13 ia6-13 ia7-13 ia8-13 ia9-13 ia10-13 ia11-13 ia12-13 ia13-13 ia14-13 ia15-13 ia16-13 ia17-13 p12 t0-12 t1-12 t2-12 t3-12 t4-12 t5-12 t6-12 t7-12 t8-12 t9-12 t10-12 t11-12 t12-12 t13-12 t14-12 t15-12 t16-12 t17-12 t18-12 ADDER18

X13-adder18 t0-12 t1-12 t2-12 t3-12 t4-12 t5-12 t6-12 t7-12 t8-12 t9-12 t10-12 t11-12 t12-12 t13-12 t14-12 t15-12 t16-12 t17-12 t18-12 ia0-14 ia1-14 ia2-14 ia3-14 ia4-14 ia5-14 ia6-14 ia7-14 ia8-14 ia9-14 ia10-14 ia11-14 ia12-14 ia13-14 ia14-14 ia15-14 ia16-14 ia17-14 p13 t0-13 t1-13 t2-13 t3-13 t4-13 t5-13 t6-13 t7-13 t8-13 t9-13 t10-13 t11-13 t12-13 t13-13 t14-13 t15-13 t16-13 t17-13 t18-13 ADDER18

X14-adder18 t0-13 t1-13 t2-13 t3-13 t4-13 t5-13 t6-13 t7-13 t8-13 t9-13 t10-13 t11-13 t12-13 t13-13 t14-13 t15-13 t16-13 t17-13 t18-13 ia0-15 ia1-15 ia2-15 ia3-15 ia4-15 ia5-15 ia6-15 ia7-15 ia8-15 ia9-15 ia10-15 ia11-15 ia12-15 ia13-15 ia14-15 ia15-15 ia16-15 ia17-15 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 ADDER18
.ends

*Decoder for enable signals of word line loading
.subckt DECODER4 a b c d ap bp cp dp o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15
X0-nand4 dp cp bp ap o0p NAND4
X1-nand4 dp cp bp a o1p NAND4
X2-nand4 dp cp b ap o2p NAND4
X3-nand4 dp cp b a o3p NAND4
X4-nand4 dp c bp ap o4p NAND4
X5-nand4 dp c bp a o5p NAND4
X6-nand4 dp c b ap o6p NAND4
X7-nand4 dp c b a o7p NAND4
X8-nand4 d cp bp ap o8p NAND4
X9-nand4 d cp bp a o9p NAND4
X10-nand4 d cp b ap o10p NAND4
X11-nand4 d cp b a o11p NAND4
X12-nand4 d c bp ap o12p NAND4
X13-nand4 d c bp a o13p NAND4
X14-nand4 d c b ap o14p NAND4
X15-nand4 d c b a o15p NAND4

X0-inv o0p o0 INV
X1-inv o1p o1 INV
X2-inv o2p o2 INV
X3-inv o3p o3 INV
X4-inv o4p o4 INV
X5-inv o5p o5 INV
X6-inv o6p o6 INV
X7-inv o7p o7 INV
X8-inv o8p o8 INV
X9-inv o9p o9 INV
X10-inv o10p o10 INV
X11-inv o11p o11 INV
X12-inv o12p o12 INV
X13-inv o13p o13 INV
X14-inv o14p o14 INV
X15-inv o15p o15 INV
.ends

*Controller for reset and capture signals
.subckt CONTROLLER cse0 cse1 cse2 cse0p cse1p cse2p b15 rman clk clkp sep cap rsac rclk
*Logic to determine when to capture values from the sense amplifier counters
X0-nand3 cse2p cse1 cse0 nc0p NAND3
X0-nor2 nc0p clkp cap NOR2

*Logic to determine when to reset the counters
X1-inv rman rmanp INV

*Resetting the sense-amplifier/sense enable counters
X0-nand4 cse2 cse1p cse0p clk nsa0p NAND4
X2-inv nsa0p nsa0 INV
X1-nor2 nsa0 rmanp rsac NOR2

*Resetting the clock/bit counters
X0-nand6 b15 cse2 cse1p cse0p clk sep rcclkp NAND6
X3-inv rcclkp rcclk INV
X2-nor2 rmanp rcclk rclk NOR2
.ends

*Crossbar array of FeFETS (weights of kernel operation)
.subckt CROSSBAR0 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15
X0-fefet-w0 bl0 wl0 sl0 n-fefet-HVT
X1-fefet-w0 bl1 wl0 sl1 n-fefet-LVT
X2-fefet-w0 bl2 wl0 sl2 n-fefet-HVT
X3-fefet-w0 bl3 wl0 sl3 n-fefet-LVT
X4-fefet-w0 bl4 wl0 sl4 n-fefet-HVT
X5-fefet-w0 bl5 wl0 sl5 n-fefet-LVT
X6-fefet-w0 bl6 wl0 sl6 n-fefet-LVT
X7-fefet-w0 bl7 wl0 sl7 n-fefet-LVT
X8-fefet-w0 bl8 wl0 sl8 n-fefet-HVT
X9-fefet-w0 bl9 wl0 sl9 n-fefet-HVT
X10-fefet-w0 bl10 wl0 sl10 n-fefet-HVT
X11-fefet-w0 bl11 wl0 sl11 n-fefet-HVT
X12-fefet-w0 bl12 wl0 sl12 n-fefet-HVT
X13-fefet-w0 bl13 wl0 sl13 n-fefet-HVT
X14-fefet-w0 bl14 wl0 sl14 n-fefet-HVT
X15-fefet-w0 bl15 wl0 sl15 n-fefet-HVT

X0-fefet-w1 bl0 wl1 sl0 n-fefet-HVT
X1-fefet-w1 bl1 wl1 sl1 n-fefet-LVT
X2-fefet-w1 bl2 wl1 sl2 n-fefet-LVT
X3-fefet-w1 bl3 wl1 sl3 n-fefet-LVT
X4-fefet-w1 bl4 wl1 sl4 n-fefet-LVT
X5-fefet-w1 bl5 wl1 sl5 n-fefet-HVT
X6-fefet-w1 bl6 wl1 sl6 n-fefet-LVT
X7-fefet-w1 bl7 wl1 sl7 n-fefet-HVT
X8-fefet-w1 bl8 wl1 sl8 n-fefet-HVT
X9-fefet-w1 bl9 wl1 sl9 n-fefet-LVT
X10-fefet-w1 bl10 wl1 sl10 n-fefet-HVT
X11-fefet-w1 bl11 wl1 sl11 n-fefet-HVT
X12-fefet-w1 bl12 wl1 sl12 n-fefet-HVT
X13-fefet-w1 bl13 wl1 sl13 n-fefet-HVT
X14-fefet-w1 bl14 wl1 sl14 n-fefet-HVT
X15-fefet-w1 bl15 wl1 sl15 n-fefet-HVT
.ends

.subckt CROSSBAR1 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15
X0-fefet-w0 bl0 wl0 sl0 n-fefet-HVT
X1-fefet-w0 bl1 wl0 sl1 n-fefet-LVT
X2-fefet-w0 bl2 wl0 sl2 n-fefet-LVT
X3-fefet-w0 bl3 wl0 sl3 n-fefet-HVT
X4-fefet-w0 bl4 wl0 sl4 n-fefet-HVT
X5-fefet-w0 bl5 wl0 sl5 n-fefet-LVT
X6-fefet-w0 bl6 wl0 sl6 n-fefet-HVT
X7-fefet-w0 bl7 wl0 sl7 n-fefet-HVT
X8-fefet-w0 bl8 wl0 sl8 n-fefet-HVT
X9-fefet-w0 bl9 wl0 sl9 n-fefet-LVT
X10-fefet-w0 bl10 wl0 sl10 n-fefet-HVT
X11-fefet-w0 bl11 wl0 sl11 n-fefet-HVT
X12-fefet-w0 bl12 wl0 sl12 n-fefet-HVT
X13-fefet-w0 bl13 wl0 sl13 n-fefet-HVT
X14-fefet-w0 bl14 wl0 sl14 n-fefet-HVT
X15-fefet-w0 bl15 wl0 sl15 n-fefet-HVT

X0-fefet-w1 bl0 wl1 sl0 n-fefet-LVT
X1-fefet-w1 bl1 wl1 sl1 n-fefet-LVT
X2-fefet-w1 bl2 wl1 sl2 n-fefet-HVT
X3-fefet-w1 bl3 wl1 sl3 n-fefet-HVT
X4-fefet-w1 bl4 wl1 sl4 n-fefet-HVT
X5-fefet-w1 bl5 wl1 sl5 n-fefet-LVT
X6-fefet-w1 bl6 wl1 sl6 n-fefet-HVT
X7-fefet-w1 bl7 wl1 sl7 n-fefet-HVT
X8-fefet-w1 bl8 wl1 sl8 n-fefet-HVT
X9-fefet-w1 bl9 wl1 sl9 n-fefet-HVT
X10-fefet-w1 bl10 wl1 sl10 n-fefet-HVT
X11-fefet-w1 bl11 wl1 sl11 n-fefet-HVT
X12-fefet-w1 bl12 wl1 sl12 n-fefet-HVT
X13-fefet-w1 bl13 wl1 sl13 n-fefet-HVT
X14-fefet-w1 bl14 wl1 sl14 n-fefet-HVT
X15-fefet-w1 bl15 wl1 sl15 n-fefet-HVT
.ends

.subckt CROSSBAR2 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15
X0-fefet-w0 bl0 wl0 sl0 n-fefet-LVT
X1-fefet-w0 bl1 wl0 sl1 n-fefet-HVT
X2-fefet-w0 bl2 wl0 sl2 n-fefet-LVT
X3-fefet-w0 bl3 wl0 sl3 n-fefet-HVT
X4-fefet-w0 bl4 wl0 sl4 n-fefet-LVT
X5-fefet-w0 bl5 wl0 sl5 n-fefet-LVT
X6-fefet-w0 bl6 wl0 sl6 n-fefet-LVT
X7-fefet-w0 bl7 wl0 sl7 n-fefet-LVT
X8-fefet-w0 bl8 wl0 sl8 n-fefet-HVT
X9-fefet-w0 bl9 wl0 sl9 n-fefet-HVT
X10-fefet-w0 bl10 wl0 sl10 n-fefet-HVT
X11-fefet-w0 bl11 wl0 sl11 n-fefet-HVT
X12-fefet-w0 bl12 wl0 sl12 n-fefet-HVT
X13-fefet-w0 bl13 wl0 sl13 n-fefet-HVT
X14-fefet-w0 bl14 wl0 sl14 n-fefet-HVT
X15-fefet-w0 bl15 wl0 sl15 n-fefet-HVT

X0-fefet-w1 bl0 wl1 sl0 n-fefet-HVT
X1-fefet-w1 bl1 wl1 sl1 n-fefet-LVT
X2-fefet-w1 bl2 wl1 sl2 n-fefet-LVT
X3-fefet-w1 bl3 wl1 sl3 n-fefet-HVT
X4-fefet-w1 bl4 wl1 sl4 n-fefet-HVT
X5-fefet-w1 bl5 wl1 sl5 n-fefet-HVT
X6-fefet-w1 bl6 wl1 sl6 n-fefet-HVT
X7-fefet-w1 bl7 wl1 sl7 n-fefet-HVT
X8-fefet-w1 bl8 wl1 sl8 n-fefet-LVT
X9-fefet-w1 bl9 wl1 sl9 n-fefet-LVT
X10-fefet-w1 bl10 wl1 sl10 n-fefet-HVT
X11-fefet-w1 bl11 wl1 sl11 n-fefet-HVT
X12-fefet-w1 bl12 wl1 sl12 n-fefet-HVT
X13-fefet-w1 bl13 wl1 sl13 n-fefet-HVT
X14-fefet-w1 bl14 wl1 sl14 n-fefet-HVT
X15-fefet-w1 bl15 wl1 sl15 n-fefet-HVT
.ends

.subckt CROSSBAR3 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15
X0-fefet-w0 bl0 wl0 sl0 n-fefet-LVT
X1-fefet-w0 bl1 wl0 sl1 n-fefet-HVT
X2-fefet-w0 bl2 wl0 sl2 n-fefet-LVT
X3-fefet-w0 bl3 wl0 sl3 n-fefet-LVT
X4-fefet-w0 bl4 wl0 sl4 n-fefet-LVT
X5-fefet-w0 bl5 wl0 sl5 n-fefet-LVT
X6-fefet-w0 bl6 wl0 sl6 n-fefet-LVT
X7-fefet-w0 bl7 wl0 sl7 n-fefet-HVT
X8-fefet-w0 bl8 wl0 sl8 n-fefet-LVT
X9-fefet-w0 bl9 wl0 sl9 n-fefet-HVT
X10-fefet-w0 bl10 wl0 sl10 n-fefet-HVT
X11-fefet-w0 bl11 wl0 sl11 n-fefet-HVT
X12-fefet-w0 bl12 wl0 sl12 n-fefet-HVT
X13-fefet-w0 bl13 wl0 sl13 n-fefet-HVT
X14-fefet-w0 bl14 wl0 sl14 n-fefet-HVT
X15-fefet-w0 bl15 wl0 sl15 n-fefet-HVT

X0-fefet-w1 bl0 wl1 sl0 n-fefet-LVT
X1-fefet-w1 bl1 wl1 sl1 n-fefet-LVT
X2-fefet-w1 bl2 wl1 sl2 n-fefet-LVT
X3-fefet-w1 bl3 wl1 sl3 n-fefet-HVT
X4-fefet-w1 bl4 wl1 sl4 n-fefet-HVT
X5-fefet-w1 bl5 wl1 sl5 n-fefet-HVT
X6-fefet-w1 bl6 wl1 sl6 n-fefet-LVT
X7-fefet-w1 bl7 wl1 sl7 n-fefet-LVT
X8-fefet-w1 bl8 wl1 sl8 n-fefet-LVT
X9-fefet-w1 bl9 wl1 sl9 n-fefet-HVT
X10-fefet-w1 bl10 wl1 sl10 n-fefet-HVT
X11-fefet-w1 bl11 wl1 sl11 n-fefet-HVT
X12-fefet-w1 bl12 wl1 sl12 n-fefet-HVT
X13-fefet-w1 bl13 wl1 sl13 n-fefet-HVT
X14-fefet-w1 bl14 wl1 sl14 n-fefet-HVT
X15-fefet-w1 bl15 wl1 sl15 n-fefet-HVT
.ends

*Peripheral circuitry to enable easy implementation of multiple kernel ops
.subckt PERIPHERAL rman se clk in0-0 in0-1 in0-2 in0-3 in0-4 in0-5 in0-6 in0-7 in0-8 in0-9 in0-10 in0-11 in0-12 in0-13 in0-14 in0-15 in1-0 in1-1 in1-2 in1-3 in1-4 in1-5 in1-6 in1-7 in1-8 in1-9 in1-10 in1-11 in1-12 in1-13 in1-14 in1-15 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15 f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 f32 f33 f34
*Decoder for enabling word-line loading
*NAND gates for word-line loading
X0-w0-nand5 node7 b0 cse0 cse1p in0-0 nw0-0 NAND5
X1-w0-nand5 node7 b1 cse0 cse1p in0-1 nw0-1 NAND5
X2-w0-nand5 node7 b2 cse0 cse1p in0-2 nw0-2 NAND5
X3-w0-nand5 node7 b3 cse0 cse1p in0-3 nw0-3 NAND5
X4-w0-nand5 node7 b4 cse0 cse1p in0-4 nw0-4 NAND5
X5-w0-nand5 node7 b5 cse0 cse1p in0-5 nw0-5 NAND5
X6-w0-nand5 node7 b6 cse0 cse1p in0-6 nw0-6 NAND5
X7-w0-nand5 node7 b7 cse0 cse1p in0-7 nw0-7 NAND5
X8-w0-nand5 node7 b8 cse0 cse1p in0-8 nw0-8 NAND5
X9-w0-nand5 node7 b9 cse0 cse1p in0-9 nw0-9 NAND5
X10-w0-nand5 node7 b10 cse0 cse1p in0-10 nw0-10 NAND5
X11-w0-nand5 node7 b11 cse0 cse1p in0-11 nw0-11 NAND5
X12-w0-nand5 node7 b12 cse0 cse1p in0-12 nw0-12 NAND5
X13-w0-nand5 node7 b13 cse0 cse1p in0-13 nw0-13 NAND5
X14-w0-nand5 node7 b14 cse0 cse1p in0-14 nw0-14 NAND5
X15-w0-nand5 node7 b15 cse0 cse1p in0-15 nw0-15 NAND5

X0-w1-nand5 node7 b0 cse0p cse1 in1-0 nw1-0 NAND5
X1-w1-nand5 node7 b1 cse0p cse1 in1-1 nw1-1 NAND5
X2-w1-nand5 node7 b2 cse0p cse1 in1-2 nw1-2 NAND5
X3-w1-nand5 node7 b3 cse0p cse1 in1-3 nw1-3 NAND5
X4-w1-nand5 node7 b4 cse0p cse1 in1-4 nw1-4 NAND5
X5-w1-nand5 node7 b5 cse0p cse1 in1-5 nw1-5 NAND5
X6-w1-nand5 node7 b6 cse0p cse1 in1-6 nw1-6 NAND5
X7-w1-nand5 node7 b7 cse0p cse1 in1-7 nw1-7 NAND5
X8-w1-nand5 node7 b8 cse0p cse1 in1-8 nw1-8 NAND5
X9-w1-nand5 node7 b9 cse0p cse1 in1-9 nw1-9 NAND5
X10-w1-nand5 node7 b10 cse0p cse1 in1-10 nw1-10 NAND5
X11-w1-nand5 node7 b11 cse0p cse1 in1-11 nw1-11 NAND5
X12-w1-nand5 node7 b12 cse0p cse1 in1-12 nw1-12 NAND5
X13-w1-nand5 node7 b13 cse0p cse1 in1-13 nw1-13 NAND5
X14-w1-nand5 node7 b14 cse0p cse1 in1-14 nw1-14 NAND5
X15-w1-nand5 node7 b15 cse0p cse1 in1-15 nw1-15 NAND5

X0-wl0-nand16 nw0-0 nw0-1 nw0-2 nw0-3 nw0-4 nw0-5 nw0-6 nw0-7 nw0-8 nw0-9 nw0-10 nw0-11 nw0-12 nw0-13 nw0-14 nw0-15 wl0 NAND16
X1-wl1-nand16 nw1-0 nw1-1 nw1-2 nw1-3 nw1-4 nw1-5 nw1-6 nw1-7 nw1-8 nw1-9 nw1-10 nw1-11 nw1-12 nw1-13 nw1-14 nw1-15 wl1 NAND16

X1-inv se sep INV
X2-inv sep node7 INV
X3-inv clk clkp INV

*Sense amplifiers at output of each bitline of the crossbar
X0-sa se bl0 sa0out SA
X1-sa se bl1 sa1out SA
X2-sa se bl2 sa2out SA
X3-sa se bl3 sa3out SA
X4-sa se bl4 sa4out SA
X5-sa se bl5 sa5out SA
X6-sa se bl6 sa6out SA
X7-sa se bl7 sa7out SA
X8-sa se bl8 sa8out SA
X9-sa se bl9 sa9out SA
X10-sa se bl10 sa10out SA
X11-sa se bl11 sa11out SA
X12-sa se bl12 sa12out SA
X13-sa se bl13 sa13out SA
X14-sa se bl14 sa14out SA
X15-sa se bl15 sa15out SA

*Counters after each sense-amp (sized to the number of inputs)
X0-counter clk rsac sa0out csa0-0 csa0-1 csa0-0p csa0-1p COUNTER-BSC
X1-counter clk rsac sa1out csa1-0 csa1-1 csa1-0p csa1-1p COUNTER-BSC
X2-counter clk rsac sa2out csa2-0 csa2-1 csa2-0p csa2-1p COUNTER-BSC
X3-counter clk rsac sa3out csa3-0 csa3-1 csa3-0p csa3-1p COUNTER-BSC
X4-counter clk rsac sa4out csa4-0 csa4-1 csa4-0p csa4-1p COUNTER-BSC
X5-counter clk rsac sa5out csa5-0 csa5-1 csa5-0p csa5-1p COUNTER-BSC
X6-counter clk rsac sa6out csa6-0 csa6-1 csa6-0p csa6-1p COUNTER-BSC
X7-counter clk rsac sa7out csa7-0 csa7-1 csa7-0p csa7-1p COUNTER-BSC
X8-counter clk rsac sa8out csa8-0 csa8-1 csa8-0p csa8-1p COUNTER-BSC
X9-counter clk rsac sa9out csa9-0 csa9-1 csa9-0p csa9-1p COUNTER-BSC
X10-counter clk rsac sa10out csa10-0 csa10-1 csa10-0p csa10-1p COUNTER-BSC
X11-counter clk rsac sa11out csa11-0 csa11-1 csa11-0p csa11-1p COUNTER-BSC
X12-counter clk rsac sa12out csa12-0 csa12-1 csa12-0p csa12-1p COUNTER-BSC
X13-counter clk rsac sa13out csa13-0 csa13-1 csa13-0p csa13-1p COUNTER-BSC
X14-counter clk rsac sa14out csa14-0 csa14-1 csa14-0p csa14-1p COUNTER-BSC
X15-counter clk rsac sa15out csa15-0 csa15-1 csa15-0p csa15-1p COUNTER-BSC

*Counter to track the number of clock cycles that have passed (this should be sized as the number of inputs + size of input)
*These outputs will be used to determine the appropriate number to multiply by for each bit-place of the final output. 
X0-counter2 rsac se cse0 cse1 cse2 cse0p cse1p cse2p COUNTER-BRC0

*Counter for the bitplace that is currently being loaded
X0-tgate cse2 bit T
X0-counter3 rclk bit cb0 cb1 cb2 cb3 cb0p cb1p cb2p cb3p COUNTER-BRC1

*Adding the MSBs of the least-significant sense amplifier counter outputs to the more significant sense amplifier counter outputs
X0-sense-amplifier-adder csa0-0 csa0-1 csa1-0 csa1-1 csa2-0 csa2-1 csa3-0 csa3-1 csa4-0 csa4-1 csa5-0 csa5-1 csa6-0 csa6-1 csa7-0 csa7-1 csa8-0 csa8-1 csa9-0 csa9-1 csa10-0 csa10-1 csa11-0 csa11-1 csa12-0 csa12-1 csa13-0 csa13-1 csa14-0 csa14-1 csa15-0 csa15-1 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 SAADDER

*Logic to determine the bit place multiplication values (determined by the width of the inputs)
X0-bitplace cb0 cb1 cb2 cb3 cb0p cb1p cb2p cb3p b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 DECODER4

*Multiply the outputs of the sense amplifier counters by the appropriate bit-place position
X0-mult csa0-0 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 MULT

*Logic to reset counters
X0-controller cse0 cse1 cse2 cse0p cse1p cse2p b15 rman clk clkp sep cap rsac rclk CONTROLLER

*Buffers between multiplier and X-DFFs
X0-p0buf0 p0 p0b0 BUF
X0-p1buf0 p1 p1b0 BUF
X0-p2buf0 p2 p2b0 BUF
X0-p3buf0 p3 p3b0 BUF
X0-p4buf0 p4 p4b0 BUF
X0-p5buf0 p5 p5b0 BUF
X0-p6buf0 p6 p6b0 BUF
X0-p7buf0 p7 p7b0 BUF
X0-p8buf0 p8 p8b0 BUF
X0-p9buf0 p9 p9b0 BUF
X0-p10buf0 p10 p10b0 BUF
X0-p11buf0 p11 p11b0 BUF
X0-p12buf0 p12 p12b0 BUF
X0-p13buf0 p13 p13b0 BUF
X0-p14buf0 p14 p14b0 BUF
X0-p15buf0 p15 p15b0 BUF
X0-p16buf0 p16 p16b0 BUF
X0-p17buf0 p17 p17b0 BUF
X0-p18buf0 p18 p18b0 BUF
X0-p19buf0 p19 p19b0 BUF
X0-p20buf0 p20 p20b0 BUF
X0-p21buf0 p21 p21b0 BUF
X0-p22buf0 p22 p22b0 BUF
X0-p23buf0 p23 p23b0 BUF
X0-p24buf0 p24 p24b0 BUF
X0-p25buf0 p25 p25b0 BUF
X0-p26buf0 p26 p26b0 BUF
X0-p27buf0 p27 p27b0 BUF
X0-p28buf0 p28 p28b0 BUF
X0-p29buf0 p29 p29b0 BUF
X0-p30buf0 p30 p30b0 BUF
X0-p31buf0 p31 p31b0 BUF
X0-p32buf0 p32 p32b0 BUF
X0-p33buf0 p33 p33b0 BUF

*Flip flops to capture values from the multiplier
*One set of flip flops feeds into the second set, and the outputs of the two sets are added together to get the final result
X0-x-dff cap rman p0b0 x0 x0p DFF1
X1-x-dff cap rman p1b0 x1 x1p DFF1
X2-x-dff cap rman p2b0 x2 x2p DFF1
X3-x-dff cap rman p3b0 x3 x3p DFF1
X4-x-dff cap rman p4b0 x4 x4p DFF1
X5-x-dff cap rman p5b0 x5 x5p DFF1
X6-x-dff cap rman p6b0 x6 x6p DFF1
X7-x-dff cap rman p7b0 x7 x7p DFF1
X8-x-dff cap rman p8b0 x8 x8p DFF1
X9-x-dff cap rman p9b0 x9 x9p DFF1
X10-x-dff cap rman p10b0 x10 x10p DFF1
X11-x-dff cap rman p11b0 x11 x11p DFF1
X12-x-dff cap rman p12b0 x12 x12p DFF1
X13-x-dff cap rman p13b0 x13 x13p DFF1
X14-x-dff cap rman p14b0 x14 x14p DFF1
X15-x-dff cap rman p15b0 x15 x15p DFF1
X16-x-dff cap rman p16b0 x16 x16p DFF1
X17-x-dff cap rman p17b0 x17 x17p DFF1
X18-x-dff cap rman p18b0 x18 x18p DFF1
X19-x-dff cap rman p19b0 x19 x19p DFF1
X20-x-dff cap rman p20b0 x20 x20p DFF1
X21-x-dff cap rman p21b0 x21 x21p DFF1
X22-x-dff cap rman p22b0 x22 x22p DFF1
X23-x-dff cap rman p23b0 x23 x23p DFF1
X24-x-dff cap rman p24b0 x24 x24p DFF1
X25-x-dff cap rman p25b0 x25 x25p DFF1
X26-x-dff cap rman p26b0 x26 x26p DFF1
X27-x-dff cap rman p27b0 x27 x27p DFF1
X28-x-dff cap rman p28b0 x28 x28p DFF1
X29-x-dff cap rman p29b0 x29 x29p DFF1
X30-x-dff cap rman p30b0 x30 x30p DFF1
X31-x-dff cap rman p31b0 x31 x31p DFF1
X32-x-dff cap rman p32b0 x32 x32p DFF1
X33-x-dff cap rman p33b0 x33 x33p DFF1

*Buffers between X-DFF and Y-DFF
X0-x0buf0 x0 x0b0 BUF
X0-x1buf0 x1 x1b0 BUF
X0-x2buf0 x2 x2b0 BUF
X0-x3buf0 x3 x3b0 BUF
X0-x4buf0 x4 x4b0 BUF
X0-x5buf0 x5 x5b0 BUF
X0-x6buf0 x6 x6b0 BUF
X0-x7buf0 x7 x7b0 BUF
X0-x8buf0 x8 x8b0 BUF
X0-x9buf0 x9 x9b0 BUF
X0-x10buf0 x10 x10b0 BUF
X0-x11buf0 x11 x11b0 BUF
X0-x12buf0 x12 x12b0 BUF
X0-x13buf0 x13 x13b0 BUF
X0-x14buf0 x14 x14b0 BUF
X0-x15buf0 x15 x15b0 BUF
X0-x16buf0 x16 x16b0 BUF
X0-x17buf0 x17 x17b0 BUF
X0-x18buf0 x18 x18b0 BUF
X0-x19buf0 x19 x19b0 BUF
X0-x20buf0 x20 x20b0 BUF
X0-x21buf0 x21 x21b0 BUF
X0-x22buf0 x22 x22b0 BUF
X0-x23buf0 x23 x23b0 BUF
X0-x24buf0 x24 x24b0 BUF
X0-x25buf0 x25 x25b0 BUF
X0-x26buf0 x26 x26b0 BUF
X0-x27buf0 x27 x27b0 BUF
X0-x28buf0 x28 x28b0 BUF
X0-x29buf0 x29 x29b0 BUF
X0-x30buf0 x30 x30b0 BUF
X0-x31buf0 x31 x31b0 BUF
X0-x32buf0 x32 x32b0 BUF
X0-x33buf0 x33 x33b0 BUF

X0-y-dff cap rman f0b0 y0 y0p DFF1
X1-y-dff cap rman f1b0 y1 y1p DFF1
X2-y-dff cap rman f2b0 y2 y2p DFF1
X3-y-dff cap rman f3b0 y3 y3p DFF1
X4-y-dff cap rman f4b0 y4 y4p DFF1
X5-y-dff cap rman f5b0 y5 y5p DFF1
X6-y-dff cap rman f6b0 y6 y6p DFF1
X7-y-dff cap rman f7b0 y7 y7p DFF1
X8-y-dff cap rman f8b0 y8 y8p DFF1
X9-y-dff cap rman f9b0 y9 y9p DFF1
X10-y-dff cap rman f10b0 y10 y10p DFF1
X11-y-dff cap rman f11b0 y11 y11p DFF1
X12-y-dff cap rman f12b0 y12 y12p DFF1
X13-y-dff cap rman f13b0 y13 y13p DFF1
X14-y-dff cap rman f14b0 y14 y14p DFF1
X15-y-dff cap rman f15b0 y15 y15p DFF1
X16-y-dff cap rman f16b0 y16 y16p DFF1
X17-y-dff cap rman f17b0 y17 y17p DFF1
X18-y-dff cap rman f18b0 y18 y18p DFF1
X19-y-dff cap rman f19b0 y19 y19p DFF1
X20-y-dff cap rman f20b0 y20 y20p DFF1
X21-y-dff cap rman f21b0 y21 y21p DFF1
X22-y-dff cap rman f22b0 y22 y22p DFF1
X23-y-dff cap rman f23b0 y23 y23p DFF1
X24-y-dff cap rman f24b0 y24 y24p DFF1
X25-y-dff cap rman f25b0 y25 y25p DFF1
X26-y-dff cap rman f26b0 y26 y26p DFF1
X27-y-dff cap rman f27b0 y27 y27p DFF1
X28-y-dff cap rman f28b0 y28 y28p DFF1
X29-y-dff cap rman f29b0 y29 y29p DFF1
X30-y-dff cap rman f30b0 y30 y30p DFF1
X31-y-dff cap rman f31b0 y31 y31p DFF1
X32-y-dff cap rman f32b0 y32 y32p DFF1
X33-y-dff cap rman f33b0 y33 y33p DFF1
X34-y-dff cap rman f34b0 y34 y34p DFF1

X0-y0buf0 y0 y0b0 BUF
X0-y1buf0 y1 y1b0 BUF
X0-y2buf0 y2 y2b0 BUF
X0-y3buf0 y3 y3b0 BUF
X0-y4buf0 y4 y4b0 BUF
X0-y5buf0 y5 y5b0 BUF
X0-y6buf0 y6 y6b0 BUF
X0-y7buf0 y7 y7b0 BUF
X0-y8buf0 y8 y8b0 BUF
X0-y9buf0 y9 y9b0 BUF
X0-y10buf0 y10 y10b0 BUF
X0-y11buf0 y11 y11b0 BUF
X0-y12buf0 y12 y12b0 BUF
X0-y13buf0 y13 y13b0 BUF
X0-y14buf0 y14 y14b0 BUF
X0-y15buf0 y15 y15b0 BUF
X0-y16buf0 y16 y16b0 BUF
X0-y17buf0 y17 y17b0 BUF
X0-y18buf0 y18 y18b0 BUF
X0-y19buf0 y19 y19b0 BUF
X0-y20buf0 y20 y20b0 BUF
X0-y21buf0 y21 y21b0 BUF
X0-y22buf0 y22 y22b0 BUF
X0-y23buf0 y23 y23b0 BUF
X0-y24buf0 y24 y24b0 BUF
X0-y25buf0 y25 y25b0 BUF
X0-y26buf0 y26 y26b0 BUF
X0-y27buf0 y27 y27b0 BUF
X0-y28buf0 y28 y28b0 BUF
X0-y29buf0 y29 y29b0 BUF
X0-y30buf0 y30 y30b0 BUF
X0-y31buf0 y31 y31b0 BUF
X0-y32buf0 y32 y32b0 BUF
X0-y33buf0 y33 y33b0 BUF
X0-y34buf0 y34 y34b0 BUF

**Adders for the penultimate result
X0-f-ha x0b0 y0b0 f0 c0 HA1B
X1-f-fa x1b0 y1b0 c0 f1 c1 FA1B
X2-f-fa x2b0 y2b0 c1 f2 c2 FA1B
X3-f-fa x3b0 y3b0 c2 f3 c3 FA1B
X4-f-fa x4b0 y4b0 c3 f4 c4 FA1B
X5-f-fa x5b0 y5b0 c4 f5 c5 FA1B
X6-f-fa x6b0 y6b0 c5 f6 c6 FA1B
X7-f-fa x7b0 y7b0 c6 f7 c7 FA1B
X8-f-fa x8b0 y8b0 c7 f8 c8 FA1B
X9-f-fa x9b0 y9b0 c8 f9 c9 FA1B
X10-f-fa x10b0 y10b0 c9 f10 c10 FA1B
X11-f-fa x11b0 y11b0 c10 f11 c11 FA1B
X12-f-fa x12b0 y12b0 c11 f12 c12 FA1B
X13-f-fa x13b0 y13b0 c12 f13 c13 FA1B
X14-f-fa x14b0 y14b0 c13 f14 c14 FA1B
X15-f-fa x15b0 y15b0 c14 f15 c15 FA1B
X16-f-fa x16b0 y16b0 c15 f16 c16 FA1B
X17-f-fa x17b0 y17b0 c16 f17 c17 FA1B
X18-f-fa x18b0 y18b0 c17 f18 c18 FA1B
X19-f-fa x19b0 y19b0 c18 f19 c19 FA1B
X20-f-fa x20b0 y20b0 c19 f20 c20 FA1B
X21-f-fa x21b0 y21b0 c20 f21 c21 FA1B
X22-f-fa x22b0 y22b0 c21 f22 c22 FA1B
X23-f-fa x23b0 y23b0 c22 f23 c23 FA1B
X24-f-fa x24b0 y24b0 c23 f24 c24 FA1B
X25-f-fa x25b0 y25b0 c24 f25 c25 FA1B
X26-f-fa x26b0 y26b0 c25 f26 c26 FA1B
X27-f-fa x27b0 y27b0 c26 f27 c27 FA1B
X28-f-fa x28b0 y28b0 c27 f28 c28 FA1B
X29-f-fa x29b0 y29b0 c28 f29 c29 FA1B
X30-f-fa x30b0 y30b0 c29 f30 c30 FA1B
X31-f-fa x31b0 y31b0 c30 f31 c31 FA1B
X32-f-fa x32b0 y32b0 c31 f32 c32 FA1B
X33-f-fa x33b0 y33b0 c32 f33 c33 FA1B
X34-f-ha y34b0 c33 f34 c34 HA1B

X0-f0buf0 f0 f0b0 BUF
X0-f1buf0 f1 f1b0 BUF
X0-f2buf0 f2 f2b0 BUF
X0-f3buf0 f3 f3b0 BUF
X0-f4buf0 f4 f4b0 BUF
X0-f5buf0 f5 f5b0 BUF
X0-f6buf0 f6 f6b0 BUF
X0-f7buf0 f7 f7b0 BUF
X0-f8buf0 f8 f8b0 BUF
X0-f9buf0 f9 f9b0 BUF
X0-f10buf0 f10 f10b0 BUF
X0-f11buf0 f11 f11b0 BUF
X0-f12buf0 f12 f12b0 BUF
X0-f13buf0 f13 f13b0 BUF
X0-f14buf0 f14 f14b0 BUF
X0-f15buf0 f15 f15b0 BUF
X0-f16buf0 f16 f16b0 BUF
X0-f17buf0 f17 f17b0 BUF
X0-f18buf0 f18 f18b0 BUF
X0-f19buf0 f19 f19b0 BUF
X0-f20buf0 f20 f20b0 BUF
X0-f21buf0 f21 f21b0 BUF
X0-f22buf0 f22 f22b0 BUF
X0-f23buf0 f23 f23b0 BUF
X0-f24buf0 f24 f24b0 BUF
X0-f25buf0 f25 f25b0 BUF
X0-f26buf0 f26 f26b0 BUF
X0-f27buf0 f27 f27b0 BUF
X0-f28buf0 f28 f28b0 BUF
X0-f29buf0 f29 f29b0 BUF
X0-f30buf0 f30 f30b0 BUF
X0-f31buf0 f31 f31b0 BUF
X0-f32buf0 f32 f32b0 BUF
X0-f33buf0 f33 f33b0 BUF
X0-f34buf0 f34 f34b0 BUF

C7 node7 GND 20fF
.ends


**Circuit Definitions** 
*First Kernel
X0-crossbar
+ bl0-0 bl0-1 bl0-2 bl0-3 bl0-4 bl0-5 bl0-6 bl0-7 bl0-8 bl0-9 bl0-10 bl0-11 bl0-12 bl0-13 bl0-14 bl0-15
+ wl0-0 wl0-1
+ sl0-0 sl0-1 sl0-2 sl0-3 sl0-4 sl0-5 sl0-6 sl0-7 sl0-8 sl0-9 sl0-10 sl0-11 sl0-12 sl0-13 sl0-14 sl0-15
+ CROSSBAR0

X0-peripheral
+ rman se clk
+ in0-0 in0-1 in0-2 in0-3 in0-4 in0-5 in0-6 in0-7 in0-8 in0-9 in0-10 in0-11 in0-12 in0-13 in0-14 in0-15
+ in1-0 in1-1 in1-2 in1-3 in1-4 in1-5 in1-6 in1-7 in1-8 in1-9 in1-10 in1-11 in1-12 in1-13 in1-14 in1-15
+ bl0-0 bl0-1 bl0-2 bl0-3 bl0-4 bl0-5 bl0-6 bl0-7 bl0-8 bl0-9 bl0-10 bl0-11 bl0-12 bl0-13 bl0-14 bl0-15
+ wl0-0 wl0-1
+ sl0-0 sl0-1 sl0-2 sl0-3 sl0-4 sl0-5 sl0-6 sl0-7 sl0-8 sl0-9 sl0-10 sl0-11 sl0-12 sl0-13 sl0-14 sl0-15
+ f0-0 f0-1 f0-2 f0-3 f0-4 f0-5 f0-6 f0-7 f0-8 f0-9 f0-10 f0-11 f0-12 f0-13 f0-14 f0-15 f0-16 f0-17 f0-18 f0-19 f0-20 f0-21 f0-22 f0-23 f0-24 f0-25 f0-26 f0-27 f0-28 f0-29 f0-30 f0-31 f0-32 f0-33 f0-34
+ PERIPHERAL

X0-adder
+ f0-0 f0-1 f0-2 f0-3 f0-4 f0-5 f0-6 f0-7 f0-8 f0-9 f0-10 f0-11 f0-12 f0-13 f0-14 f0-15 f0-16 f0-17 f0-18 f0-19 f0-20 f0-21 f0-22 f0-23 f0-24 f0-25 f0-26 f0-27 f0-28 f0-29 f0-30 f0-31 f0-32 f0-33 f0-34
+ bi0-0 bi0-1 bi0-2 bi0-3 bi0-4 bi0-5 bi0-6 bi0-7 bi0-8 bi0-9 bi0-10 bi0-11 bi0-12 bi0-13 bi0-14 bi0-15
+ s0-0 s0-1 s0-2 s0-3 s0-4 s0-5 s0-6 s0-7 s0-8 s0-9 s0-10 s0-11 s0-12 s0-13 s0-14 s0-15 s0-16 s0-17 s0-18 s0-19 s0-20 s0-21 s0-22 s0-23 s0-24 s0-25 s0-26 s0-27 s0-28 s0-29 s0-30 s0-31 s0-32 s0-33 s0-34 s0-35
+ ADDER35

*Second Kernel
X1-crossbar
+ bl1-0 bl1-1 bl1-2 bl1-3 bl1-4 bl1-5 bl1-6 bl1-7 bl1-8 bl1-9 bl1-10 bl1-11 bl1-12 bl1-13 bl1-14 bl1-15
+ wl1-0 wl1-1
+ sl1-0 sl1-1 sl1-2 sl1-3 sl1-4 sl1-5 sl1-6 sl1-7 sl1-8 sl1-9 sl1-10 sl1-11 sl1-12 sl1-13 sl1-14 sl1-15
+ CROSSBAR1

X1-peripheral
+ rman se clk
+ in0-0 in0-1 in0-2 in0-3 in0-4 in0-5 in0-6 in0-7 in0-8 in0-9 in0-10 in0-11 in0-12 in0-13 in0-14 in0-15
+ in1-0 in1-1 in1-2 in1-3 in1-4 in1-5 in1-6 in1-7 in1-8 in1-9 in1-10 in1-11 in1-12 in1-13 in1-14 in1-15
+ bl1-0 bl1-1 bl1-2 bl1-3 bl1-4 bl1-5 bl1-6 bl1-7 bl1-8 bl1-9 bl1-10 bl1-11 bl1-12 bl1-13 bl1-14 bl1-15
+ wl1-0 wl1-1
+ sl1-0 sl1-1 sl1-2 sl1-3 sl1-4 sl1-5 sl1-6 sl1-7 sl1-8 sl1-9 sl1-10 sl1-11 sl1-12 sl1-13 sl1-14 sl1-15
+ f1-0 f1-1 f1-2 f1-3 f1-4 f1-5 f1-6 f1-7 f1-8 f1-9 f1-10 f1-11 f1-12 f1-13 f1-14 f1-15 f1-16 f1-17 f1-18 f1-19 f1-20 f1-21 f1-22 f1-23 f1-24 f1-25 f1-26 f1-27 f1-28 f1-29 f1-30 f1-31 f1-32 f1-33 f1-34
+ PERIPHERAL

X1-adder
+ f1-0 f1-1 f1-2 f1-3 f1-4 f1-5 f1-6 f1-7 f1-8 f1-9 f1-10 f1-11 f1-12 f1-13 f1-14 f1-15 f1-16 f1-17 f1-18 f1-19 f1-20 f1-21 f1-22 f1-23 f1-24 f1-25 f1-26 f1-27 f1-28 f1-29 f1-30 f1-31 f1-32 f1-33 f1
+ bi1-0 bi1-1 bi1-2 bi1-3 bi1-4 bi1-5 bi1-6 bi1-7 bi1-8 bi1-9 bi1-10 bi1-11 bi1-12 bi1-13 bi1-14 bi1-15
+ s1-0 s1-1 s1-2 s1-3 s1-4 s1-5 s1-6 s1-7 s1-8 s1-9 s1-10 s1-11 s1-12 s1-13 s1-14 s1-15 s1-16 s1-17 s1-18 s1-19 s1-20 s1-21 s1-22 s1-23 s1-24 s1-25 s1-26 s1-27 s1-28 s1-29 s1-30 s1-31 s1-32 s1-33 s1-34 s1-35
+ ADDER35

*Third Kernel
X2-crossbar
+ bl2-0 bl2-1 bl2-2 bl2-3 bl2-4 bl2-5 bl2-6 bl2-7 bl2-8 bl2-9 bl2-10 bl2-11 bl2-12 bl2-13 bl2-14 bl2-15
+ wl2-0 wl2-1
+ sl2-0 sl2-1 sl2-2 sl2-3 sl2-4 sl2-5 sl2-6 sl2-7 sl2-8 sl2-9 sl2-10 sl2-11 sl2-12 sl2-13 sl2-14 sl2-15
+ CROSSBAR2

X2-peripheral
+ rman se clk
+ in0-0 in0-1 in0-2 in0-3 in0-4 in0-5 in0-6 in0-7 in0-8 in0-9 in0-10 in0-11 in0-12 in0-13 in0-14 in0-15
+ in1-0 in1-1 in1-2 in1-3 in1-4 in1-5 in1-6 in1-7 in1-8 in1-9 in1-10 in1-11 in1-12 in1-13 in1-14 in1-15
+ bl2-0 bl2-1 bl2-2 bl2-3 bl2-4 bl2-5 bl2-6 bl2-7 bl2-8 bl2-9 bl2-10 bl2-11 bl2-12 bl2-13 bl2-14 bl2-15
+ wl2-0 wl2-1
+ sl2-0 sl2-1 sl2-2 sl2-3 sl2-4 sl2-5 sl2-6 sl2-7 sl2-8 sl2-9 sl2-10 sl2-11 sl2-12 sl2-13 sl2-14 sl2-15
+ f2-0 f2-1 f2-2 f2-3 f2-4 f2-5 f2-6 f2-7 f2-8 f2-9 f2-10 f2-11 f2-12 f2-13 f2-14 f2-15 f2-16 f2-17 f2-18 f2-19 f2-20 f2-21 f2-22 f2-23 f2-24 f2-25 f2-26 f2-27 f2-28 f2-29 f2-30 f2-31 f2-32 f2-33 f2-34
+ PERIPHERAL

X2-adder
+ f2-0 f2-1 f2-2 f2-3 f2-4 f2-5 f2-6 f2-7 f2-8 f2-9 f2-10 f2-11 f2-12 f2-13 f2-14 f2-15 f2-16 f2-17 f2-18 f2-19 f2-20 f2-21 f2-22 f2-23 f2-24 f2-25 f2-26 f2-27 f2-28 f2-29 f2-30 f2-31 f2-32 f2-33 f2-34
+ bi2-0 bi2-1 bi2-2 bi2-3 bi2-4 bi2-5 bi2-6 bi2-7 bi2-8 bi2-9 bi2-10 bi2-11 bi2-12 bi2-13 bi2-14 bi2-15
+ s2-0 s2-1 s2-2 s2-3 s2-4 s2-5 s2-6 s2-7 s2-8 s2-9 s2-10 s2-11 s2-12 s2-13 s2-14 s2-15 s2-16 s2-17 s2-18 s2-19 s2-20 s2-21 s2-22 s2-23 s2-24 s2-25 s2-26 s2-27 s2-28 s2-29 s2-30 s2-31 s2-32 s2-33 s2-34 s2-35
+ ADDER35

*Fourth Kernel
X3-crossbar
+ bl3-0 bl3-1 bl3-2 bl3-3 bl3-4 bl3-5 bl3-6 bl3-7 bl3-8 bl3-9 bl3-10 bl3-11 bl3-12 bl3-13 bl3-14 bl3-15
+ wl3-0 wl3-1
+ sl3-0 sl3-1 sl3-2 sl3-3 sl3-4 sl3-5 sl3-6 sl3-7 sl3-8 sl3-9 sl3-10 sl3-11 sl3-12 sl3-13 sl3-14 sl3-15
+ CROSSBAR3

X3-peripheral
+ rman se clk
+ in0-0 in0-1 in0-2 in0-3 in0-4 in0-5 in0-6 in0-7 in0-8 in0-9 in0-10 in0-11 in0-12 in0-13 in0-14 in0-15
+ in1-0 in1-1 in1-2 in1-3 in1-4 in1-5 in1-6 in1-7 in1-8 in1-9 in1-10 in1-11 in1-12 in1-13 in1-14 in1-15
+ bl3-0 bl3-1 bl3-2 bl3-3 bl3-4 bl3-5 bl3-6 bl3-7 bl3-8 bl3-9 bl3-10 bl3-11 bl3-12 bl3-13 bl3-14 bl3-15
+ wl3-0 wl3-1
+ sl3-0 sl3-1 sl3-2 sl3-3 sl3-4 sl3-5 sl3-6 sl3-7 sl3-8 sl3-9 sl3-10 sl3-11 sl3-12 sl3-13 sl3-14 sl3-15
+ f3-0 f3-1 f3-2 f3-3 f3-4 f3-5 f3-6 f3-7 f3-8 f3-9 f3-10 f3-11 f3-12 f3-13 f3-14 f3-15 f3-16 f3-17 f3-18 f3-19 f3-20 f3-21 f3-22 f3-23 f3-24 f3-25 f3-26 f3-27 f3-28 f3-29 f3-30 f3-31 f3-32 f3-33 f3-34
+ PERIPHERAL

X3-adder
+ f3-0 f3-1 f3-2 f3-3 f3-4 f3-5 f3-6 f3-7 f3-8 f3-9 f3-10 f3-11 f3-12 f3-13 f3-14 f3-15 f3-16 f3-17 f3-18 f3-19 f3-20 f3-21 f3-22 f3-23 f3-24 f3-25 f3-26 f3-27 f3-28 f3-29 f3-30 f3-31 f3-32 f3-33 f3-34
+ bi3-0 bi3-1 bi3-2 bi3-3 bi3-4 bi3-5 bi3-6 bi3-7 bi3-8 bi3-9 bi3-10 bi3-11 bi3-12 bi3-13 bi3-14 bi3-15
+ s3-0 s3-1 s3-2 s3-3 s3-4 s3-5 s3-6 s3-7 s3-8 s3-9 s3-10 s3-11 s3-12 s3-13 s3-14 s3-15 s3-16 s3-17 s3-18 s3-19 s3-20 s3-21 s3-22 s3-23 s3-24 s3-25 s3-26 s3-27 s3-28 s3-29 s3-30 s3-31 s3-32 s3-33 s3-34 s3-35
+ ADDER35

**Capacitor Definitions**
Cclk clk GND 5fF
Cse se GND 5fF

**Simulation Control**
Vrman rman GND PWL (0n 1 1n 1 1.001n 0 2n 0 2.001n 1)
Vse se GND PULSE (0 1 5n 1p 1p 2.5n 5n)
Vclk clk GND PULSE (0 1 6.7n 1p 1p 2.5n 5n)

.MEASURE TRAN s0-0 FIND v(s0-0) when V(clk)=1V RISE=64
.MEASURE TRAN s0-1 FIND v(s0-1) when V(clk)=1V RISE=64
.MEASURE TRAN s0-2 FIND v(s0-2) when V(clk)=1V RISE=64
.MEASURE TRAN s0-3 FIND v(s0-3) when V(clk)=1V RISE=64
.MEASURE TRAN s0-4 FIND v(s0-4) when V(clk)=1V RISE=64
.MEASURE TRAN s0-5 FIND v(s0-5) when V(clk)=1V RISE=64
.MEASURE TRAN s0-6 FIND v(s0-6) when V(clk)=1V RISE=64
.MEASURE TRAN s0-7 FIND v(s0-7) when V(clk)=1V RISE=64
.MEASURE TRAN s0-8 FIND v(s0-8) when V(clk)=1V RISE=64
.MEASURE TRAN s0-9 FIND v(s0-9) when V(clk)=1V RISE=64
.MEASURE TRAN s0-10 FIND v(s0-10) when V(clk)=1V RISE=64
.MEASURE TRAN s0-11 FIND v(s0-11) when V(clk)=1V RISE=64
.MEASURE TRAN s0-12 FIND v(s0-12) when V(clk)=1V RISE=64
.MEASURE TRAN s0-13 FIND v(s0-13) when V(clk)=1V RISE=64
.MEASURE TRAN s0-14 FIND v(s0-14) when V(clk)=1V RISE=64
.MEASURE TRAN s0-15 FIND v(s0-15) when V(clk)=1V RISE=64
.MEASURE TRAN s0-16 FIND v(s0-16) when V(clk)=1V RISE=64
.MEASURE TRAN s0-17 FIND v(s0-17) when V(clk)=1V RISE=64
.MEASURE TRAN s0-18 FIND v(s0-18) when V(clk)=1V RISE=64
.MEASURE TRAN s0-19 FIND v(s0-19) when V(clk)=1V RISE=64
.MEASURE TRAN s0-20 FIND v(s0-20) when V(clk)=1V RISE=64
.MEASURE TRAN s0-21 FIND v(s0-21) when V(clk)=1V RISE=64
.MEASURE TRAN s0-22 FIND v(s0-22) when V(clk)=1V RISE=64
.MEASURE TRAN s0-23 FIND v(s0-23) when V(clk)=1V RISE=64
.MEASURE TRAN s0-24 FIND v(s0-24) when V(clk)=1V RISE=64
.MEASURE TRAN s0-25 FIND v(s0-25) when V(clk)=1V RISE=64
.MEASURE TRAN s0-26 FIND v(s0-26) when V(clk)=1V RISE=64
.MEASURE TRAN s0-27 FIND v(s0-27) when V(clk)=1V RISE=64
.MEASURE TRAN s0-28 FIND v(s0-28) when V(clk)=1V RISE=64
.MEASURE TRAN s0-29 FIND v(s0-29) when V(clk)=1V RISE=64
.MEASURE TRAN s0-30 FIND v(s0-30) when V(clk)=1V RISE=64
.MEASURE TRAN s0-31 FIND v(s0-31) when V(clk)=1V RISE=64
.MEASURE TRAN s0-32 FIND v(s0-32) when V(clk)=1V RISE=64
.MEASURE TRAN s0-33 FIND v(s0-33) when V(clk)=1V RISE=64
.MEASURE TRAN s0-34 FIND v(s0-34) when V(clk)=1V RISE=64
.MEASURE TRAN s0-35 FIND v(s0-35) when V(clk)=1V RISE=64

.MEASURE TRAN s1-0 FIND v(s1-0) when V(clk)=1V RISE=64
.MEASURE TRAN s1-1 FIND v(s1-1) when V(clk)=1V RISE=64
.MEASURE TRAN s1-2 FIND v(s1-2) when V(clk)=1V RISE=64
.MEASURE TRAN s1-3 FIND v(s1-3) when V(clk)=1V RISE=64
.MEASURE TRAN s1-4 FIND v(s1-4) when V(clk)=1V RISE=64
.MEASURE TRAN s1-5 FIND v(s1-5) when V(clk)=1V RISE=64
.MEASURE TRAN s1-6 FIND v(s1-6) when V(clk)=1V RISE=64
.MEASURE TRAN s1-7 FIND v(s1-7) when V(clk)=1V RISE=64
.MEASURE TRAN s1-8 FIND v(s1-8) when V(clk)=1V RISE=64
.MEASURE TRAN s1-9 FIND v(s1-9) when V(clk)=1V RISE=64
.MEASURE TRAN s1-10 FIND v(s1-10) when V(clk)=1V RISE=64
.MEASURE TRAN s1-11 FIND v(s1-11) when V(clk)=1V RISE=64
.MEASURE TRAN s1-12 FIND v(s1-12) when V(clk)=1V RISE=64
.MEASURE TRAN s1-13 FIND v(s1-13) when V(clk)=1V RISE=64
.MEASURE TRAN s1-14 FIND v(s1-14) when V(clk)=1V RISE=64
.MEASURE TRAN s1-15 FIND v(s1-15) when V(clk)=1V RISE=64
.MEASURE TRAN s1-16 FIND v(s1-16) when V(clk)=1V RISE=64
.MEASURE TRAN s1-17 FIND v(s1-17) when V(clk)=1V RISE=64
.MEASURE TRAN s1-18 FIND v(s1-18) when V(clk)=1V RISE=64
.MEASURE TRAN s1-19 FIND v(s1-19) when V(clk)=1V RISE=64
.MEASURE TRAN s1-20 FIND v(s1-20) when V(clk)=1V RISE=64
.MEASURE TRAN s1-21 FIND v(s1-21) when V(clk)=1V RISE=64
.MEASURE TRAN s1-22 FIND v(s1-22) when V(clk)=1V RISE=64
.MEASURE TRAN s1-23 FIND v(s1-23) when V(clk)=1V RISE=64
.MEASURE TRAN s1-24 FIND v(s1-24) when V(clk)=1V RISE=64
.MEASURE TRAN s1-25 FIND v(s1-25) when V(clk)=1V RISE=64
.MEASURE TRAN s1-26 FIND v(s1-26) when V(clk)=1V RISE=64
.MEASURE TRAN s1-27 FIND v(s1-27) when V(clk)=1V RISE=64
.MEASURE TRAN s1-28 FIND v(s1-28) when V(clk)=1V RISE=64
.MEASURE TRAN s1-29 FIND v(s1-29) when V(clk)=1V RISE=64
.MEASURE TRAN s1-30 FIND v(s1-30) when V(clk)=1V RISE=64
.MEASURE TRAN s1-31 FIND v(s1-31) when V(clk)=1V RISE=64
.MEASURE TRAN s1-32 FIND v(s1-32) when V(clk)=1V RISE=64
.MEASURE TRAN s1-33 FIND v(s1-33) when V(clk)=1V RISE=64
.MEASURE TRAN s1-34 FIND v(s1-34) when V(clk)=1V RISE=64
.MEASURE TRAN s1-35 FIND v(s1-35) when V(clk)=1V RISE=64

.MEASURE TRAN s2-0 FIND v(s2-0) when V(clk)=1V RISE=64
.MEASURE TRAN s2-1 FIND v(s2-1) when V(clk)=1V RISE=64
.MEASURE TRAN s2-2 FIND v(s2-2) when V(clk)=1V RISE=64
.MEASURE TRAN s2-3 FIND v(s2-3) when V(clk)=1V RISE=64
.MEASURE TRAN s2-4 FIND v(s2-4) when V(clk)=1V RISE=64
.MEASURE TRAN s2-5 FIND v(s2-5) when V(clk)=1V RISE=64
.MEASURE TRAN s2-6 FIND v(s2-6) when V(clk)=1V RISE=64
.MEASURE TRAN s2-7 FIND v(s2-7) when V(clk)=1V RISE=64
.MEASURE TRAN s2-8 FIND v(s2-8) when V(clk)=1V RISE=64
.MEASURE TRAN s2-9 FIND v(s2-9) when V(clk)=1V RISE=64
.MEASURE TRAN s2-10 FIND v(s2-10) when V(clk)=1V RISE=64
.MEASURE TRAN s2-11 FIND v(s2-11) when V(clk)=1V RISE=64
.MEASURE TRAN s2-12 FIND v(s2-12) when V(clk)=1V RISE=64
.MEASURE TRAN s2-13 FIND v(s2-13) when V(clk)=1V RISE=64
.MEASURE TRAN s2-14 FIND v(s2-14) when V(clk)=1V RISE=64
.MEASURE TRAN s2-15 FIND v(s2-15) when V(clk)=1V RISE=64
.MEASURE TRAN s2-16 FIND v(s2-16) when V(clk)=1V RISE=64
.MEASURE TRAN s2-17 FIND v(s2-17) when V(clk)=1V RISE=64
.MEASURE TRAN s2-18 FIND v(s2-18) when V(clk)=1V RISE=64
.MEASURE TRAN s2-19 FIND v(s2-19) when V(clk)=1V RISE=64
.MEASURE TRAN s2-20 FIND v(s2-20) when V(clk)=1V RISE=64
.MEASURE TRAN s2-21 FIND v(s2-21) when V(clk)=1V RISE=64
.MEASURE TRAN s2-22 FIND v(s2-22) when V(clk)=1V RISE=64
.MEASURE TRAN s2-23 FIND v(s2-23) when V(clk)=1V RISE=64
.MEASURE TRAN s2-24 FIND v(s2-24) when V(clk)=1V RISE=64
.MEASURE TRAN s2-25 FIND v(s2-25) when V(clk)=1V RISE=64
.MEASURE TRAN s2-26 FIND v(s2-26) when V(clk)=1V RISE=64
.MEASURE TRAN s2-27 FIND v(s2-27) when V(clk)=1V RISE=64
.MEASURE TRAN s2-28 FIND v(s2-28) when V(clk)=1V RISE=64
.MEASURE TRAN s2-29 FIND v(s2-29) when V(clk)=1V RISE=64
.MEASURE TRAN s2-30 FIND v(s2-30) when V(clk)=1V RISE=64
.MEASURE TRAN s2-31 FIND v(s2-31) when V(clk)=1V RISE=64
.MEASURE TRAN s2-32 FIND v(s2-32) when V(clk)=1V RISE=64
.MEASURE TRAN s2-33 FIND v(s2-33) when V(clk)=1V RISE=64
.MEASURE TRAN s2-34 FIND v(s2-34) when V(clk)=1V RISE=64
.MEASURE TRAN s2-35 FIND v(s2-35) when V(clk)=1V RISE=64

.MEASURE TRAN s3-0 FIND v(s3-0) when V(clk)=1V RISE=64
.MEASURE TRAN s3-1 FIND v(s3-1) when V(clk)=1V RISE=64
.MEASURE TRAN s3-2 FIND v(s3-2) when V(clk)=1V RISE=64
.MEASURE TRAN s3-3 FIND v(s3-3) when V(clk)=1V RISE=64
.MEASURE TRAN s3-4 FIND v(s3-4) when V(clk)=1V RISE=64
.MEASURE TRAN s3-5 FIND v(s3-5) when V(clk)=1V RISE=64
.MEASURE TRAN s3-6 FIND v(s3-6) when V(clk)=1V RISE=64
.MEASURE TRAN s3-7 FIND v(s3-7) when V(clk)=1V RISE=64
.MEASURE TRAN s3-8 FIND v(s3-8) when V(clk)=1V RISE=64
.MEASURE TRAN s3-9 FIND v(s3-9) when V(clk)=1V RISE=64
.MEASURE TRAN s3-10 FIND v(s3-10) when V(clk)=1V RISE=64
.MEASURE TRAN s3-11 FIND v(s3-11) when V(clk)=1V RISE=64
.MEASURE TRAN s3-12 FIND v(s3-12) when V(clk)=1V RISE=64
.MEASURE TRAN s3-13 FIND v(s3-13) when V(clk)=1V RISE=64
.MEASURE TRAN s3-14 FIND v(s3-14) when V(clk)=1V RISE=64
.MEASURE TRAN s3-15 FIND v(s3-15) when V(clk)=1V RISE=64
.MEASURE TRAN s3-16 FIND v(s3-16) when V(clk)=1V RISE=64
.MEASURE TRAN s3-17 FIND v(s3-17) when V(clk)=1V RISE=64
.MEASURE TRAN s3-18 FIND v(s3-18) when V(clk)=1V RISE=64
.MEASURE TRAN s3-19 FIND v(s3-19) when V(clk)=1V RISE=64
.MEASURE TRAN s3-20 FIND v(s3-20) when V(clk)=1V RISE=64
.MEASURE TRAN s3-21 FIND v(s3-21) when V(clk)=1V RISE=64
.MEASURE TRAN s3-22 FIND v(s3-22) when V(clk)=1V RISE=64
.MEASURE TRAN s3-23 FIND v(s3-23) when V(clk)=1V RISE=64
.MEASURE TRAN s3-24 FIND v(s3-24) when V(clk)=1V RISE=64
.MEASURE TRAN s3-25 FIND v(s3-25) when V(clk)=1V RISE=64
.MEASURE TRAN s3-26 FIND v(s3-26) when V(clk)=1V RISE=64
.MEASURE TRAN s3-27 FIND v(s3-27) when V(clk)=1V RISE=64
.MEASURE TRAN s3-28 FIND v(s3-28) when V(clk)=1V RISE=64
.MEASURE TRAN s3-29 FIND v(s3-29) when V(clk)=1V RISE=64
.MEASURE TRAN s3-30 FIND v(s3-30) when V(clk)=1V RISE=64
.MEASURE TRAN s3-31 FIND v(s3-31) when V(clk)=1V RISE=64
.MEASURE TRAN s3-32 FIND v(s3-32) when V(clk)=1V RISE=64
.MEASURE TRAN s3-33 FIND v(s3-33) when V(clk)=1V RISE=64
.MEASURE TRAN s3-34 FIND v(s3-34) when V(clk)=1V RISE=64
.MEASURE TRAN s3-35 FIND v(s3-35) when V(clk)=1V RISE=64

.TRAN 0.001n 350n

.OPTION POST

.END
