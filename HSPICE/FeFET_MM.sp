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
Vsl0 sl0 0 1
Vsl1 sl1 0 1
Vsl2 sl2 0 1
Vsl3 sl3 0 1
Vsl4 sl4 0 1
Vsl5 sl5 0 1
Vsl6 sl6 0 1
Vsl7 sl7 0 1
Vsl8 sl8 0 1
Vsl9 sl9 0 1
Vsl10 sl10 0 1
Vsl11 sl11 0 1
Vsl12 sl12 0 1
Vsl13 sl13 0 1
Vsl14 sl14 0 1
Vsl15 sl15 0 1

*First input
Vin0-0 in0-0 0 1
Vin0-1 in0-1 0 1

*Second input
Vin1-0 in1-0 0 1
Vin1-1 in1-1 0 1

*Third input
Vin2-0 in2-0 0 1
Vin2-1 in2-1 0 1

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
X11-inv inp5 out INV
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

*Second counter type, binary ripple-counter, 4bit output
.subckt COUNTER-BRC r in c0 c1 c2 c3 cp0 cp1 cp2 cp3
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

*Multiplier, 18bit x 2bit
.subckt MULT a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 b0 b1 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
X0-nand2 a0 b0 nnode0 NAND2
X1-nand2 a0 b1 nnode1 NAND2

X2-nand2 a1 b0 nnode2 NAND2
X3-nand2 a1 b1 nnode3 NAND2

X4-nand2 a2 b0 nnode4 NAND2
X5-nand2 a2 b1 nnode5 NAND2

X6-nand2 a3 b0 nnode6 NAND2
X7-nand2 a3 b1 nnode7 NAND2

X8-nand2 a4 b0 nnode8 NAND2
X9-nand2 a4 b1 nnode9 NAND2

X10-nand2 a5 b0 nnode10 NAND2
X11-nand2 a5 b1 nnode11 NAND2

X12-nand2 a6 b0 nnode12 NAND2
X13-nand2 a6 b1 nnode13 NAND2

X14-nand2 a7 b0 nnode14 NAND2
X15-nand2 a7 b1 nnode15 NAND2

X16-nand2 a8 b0 nnode16 NAND2
X17-nand2 a8 b1 nnode17 NAND2

X18-nand2 a9 b0 nnode18 NAND2
X19-nand2 a9 b1 nnode19 NAND2

X20-nand2 a10 b0 nnode20 NAND2
X21-nand2 a10 b1 nnode21 NAND2

X22-nand2 a11 b0 nnode22 NAND2
X23-nand2 a11 b1 nnode23 NAND2

X24-nand2 a12 b0 nnode24 NAND2
X25-nand2 a12 b1 nnode25 NAND2

X26-nand2 a13 b0 nnode26 NAND2
X27-nand2 a13 b1 nnode27 NAND2

X28-nand2 a14 b0 nnode28 NAND2
X29-nand2 a14 b1 nnode29 NAND2

X30-nand2 a15 b0 nnode30 NAND2
X31-nand2 a15 b1 nnode31 NAND2

X32-nand2 a16 b0 nnode32 NAND2
X33-nand2 a16 b1 nnode33 NAND2

X34-nand2 a17 b0 nnode34 NAND2
X35-nand2 a17 b1 nnode35 NAND2

X0-inv nnode0 p0 INV
X1-inv nnode1 inode1 INV
X2-inv nnode2 inode2 INV
X3-inv nnode3 inode3 INV
X4-inv nnode4 inode4 INV
X5-inv nnode5 inode5 INV
X6-inv nnode6 inode6 INV
X7-inv nnode7 inode7 INV
X8-inv nnode8 inode8 INV
X9-inv nnode9 inode9 INV
X10-inv nnode10 inode10 INV
X11-inv nnode11 inode11 INV
X12-inv nnode12 inode12 INV
X13-inv nnode13 inode13 INV
X14-inv nnode14 inode14 INV
X15-inv nnode15 inode15 INV
X16-inv nnode16 inode16 INV
X17-inv nnode17 inode17 INV
X18-inv nnode18 inode18 INV
X19-inv nnode19 inode19 INV
X20-inv nnode20 inode20 INV
X21-inv nnode21 inode21 INV
X22-inv nnode22 inode22 INV
X23-inv nnode23 inode23 INV
X24-inv nnode24 inode24 INV
X25-inv nnode25 inode25 INV
X26-inv nnode26 inode26 INV
X27-inv nnode27 inode27 INV
X28-inv nnode28 inode28 INV
X29-inv nnode29 inode29 INV
X30-inv nnode30 inode30 INV
X31-inv nnode31 inode31 INV
X32-inv nnode32 inode32 INV
X33-inv nnode33 inode33 INV
X34-inv nnode34 inode34 INV
X35-inv nnode35 inode35 INV

X1-ha inode1 inode2 p1 c1 HA1B
X2-fa inode3 inode4 c1 p2 c2 FA1B
X3-fa inode5 inode6 c2 p3 c3 FA1B
X4-fa inode7 inode8 c3 p4 c4 FA1B
X5-fa inode9 inode10 c4 p5 c5 FA1B
X6-fa inode11 inode12 c5 p6 c6 FA1B
X7-fa inode13 inode14 c6 p7 c7 FA1B
X8-fa inode15 inode16 c7 p8 c8 FA1B
X9-fa inode17 inode18 c8 p9 c9 FA1B
X10-fa inode19 inode20 c9 p10 c10 FA1B
X11-fa inode21 inode22 c10 p11 c11 FA1B
X12-fa inode23 inode24 c11 p12 c12 FA1B
X13-fa inode25 inode26 c12 p13 c13 FA1B
X14-fa inode27 inode28 c13 p14 c14 FA1B
X15-fa inode29 inode30 c14 p15 c15 FA1B
X16-fa inode31 inode32 c15 p16 c16 FA1B
X17-fa inode33 inode34 c16 p17 c17 FA1B
X18-ha inode35 c17 p18 p19 HA1B
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
.subckt CONTROLLER cse0 cse1 cse2 cse3 cse0p cse1p cse2p cse3p rman clk clkp sep cap rsac rclk
*Logic to determine when to capture values from the sense amplifier counters
X0-nand4 cse3p cse2 cse1p cse0p nc0 NAND4
X1-nand4 cse3 cse2p cse1p cse0 nc1 NAND4
X0-nand2 nc0 nc1 n0p NAND2
X0-inv n0p n0 INV
X0-nor2 n0 clkp cap NOR2

*Logic to determine when to reset the counters
X1-inv rman rmanp INV

*Resetting the sense-amplifier counters
X0-nand5 cse3p cse2 cse1p cse0 clk nsa0 NAND5
X1-nand5 cse3 cse2p cse1 cse0p clk nsa1 NAND5
X1-nand2 nsa0 nsa1 ract NAND2
X1-nor2 ract rmanp rsac NOR2

*Resetting the clock/se counters
X0-nand6 cse3 cse2p cse1 cse0p clk sep rcclkp NAND6
X3-inv rcclkp rcclk INV
X2-nor2 rmanp rcclk rclk NOR2
.ends

.subckt BITPLACE c0 c1 c2 c3 c0p c1p c2p c3p b0 b1
X0-nand2 c3p c2p n0 NAND2
X0-nand3 c3p c1p c0p n1 NAND3
X1-nand2 n0 n1 b0 NAND2

X1-nand3 c3 c2p c1p n2 NAND3
X2-nand3 c3p c2 c0 n3 NAND3
X3-nand3 c3p c2 c1 n4 NAND3
X4-nand3 n2 n3 n4 b1 NAND3
.ends

*Crossbar array of FeFETS (weights of kernel operation)
.subckt CROSSBAR0 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 wl2 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15
X0-fefet-w0 bl0 wl0 sl0 n-fefet-LVT
X1-fefet-w0 bl1 wl0 sl1 n-fefet-LVT
X2-fefet-w0 bl2 wl0 sl2 n-fefet-LVT
X3-fefet-w0 bl3 wl0 sl3 n-fefet-LVT
X4-fefet-w0 bl4 wl0 sl4 n-fefet-LVT
X5-fefet-w0 bl5 wl0 sl5 n-fefet-LVT
X6-fefet-w0 bl6 wl0 sl6 n-fefet-LVT
X7-fefet-w0 bl7 wl0 sl7 n-fefet-LVT
X8-fefet-w0 bl8 wl0 sl8 n-fefet-LVT
X9-fefet-w0 bl9 wl0 sl9 n-fefet-LVT
X10-fefet-w0 bl10 wl0 sl10 n-fefet-LVT
X11-fefet-w0 bl11 wl0 sl11 n-fefet-LVT
X12-fefet-w0 bl12 wl0 sl12 n-fefet-LVT
X13-fefet-w0 bl13 wl0 sl13 n-fefet-LVT
X14-fefet-w0 bl14 wl0 sl14 n-fefet-LVT
X15-fefet-w0 bl15 wl0 sl15 n-fefet-LVT

X0-fefet-w1 bl0 wl1 sl0 n-fefet-LVT
X1-fefet-w1 bl1 wl1 sl1 n-fefet-LVT
X2-fefet-w1 bl2 wl1 sl2 n-fefet-LVT
X3-fefet-w1 bl3 wl1 sl3 n-fefet-LVT
X4-fefet-w1 bl4 wl1 sl4 n-fefet-LVT
X5-fefet-w1 bl5 wl1 sl5 n-fefet-LVT
X6-fefet-w1 bl6 wl1 sl6 n-fefet-LVT
X7-fefet-w1 bl7 wl1 sl7 n-fefet-LVT
X8-fefet-w1 bl8 wl1 sl8 n-fefet-LVT
X9-fefet-w1 bl9 wl1 sl9 n-fefet-LVT
X10-fefet-w1 bl10 wl1 sl10 n-fefet-LVT
X11-fefet-w1 bl11 wl1 sl11 n-fefet-LVT
X12-fefet-w1 bl12 wl1 sl12 n-fefet-LVT
X13-fefet-w1 bl13 wl1 sl13 n-fefet-LVT
X14-fefet-w1 bl14 wl1 sl14 n-fefet-LVT
X15-fefet-w1 bl15 wl1 sl15 n-fefet-LVT

X0-fefet-w2 bl0 wl2 sl0 n-fefet-LVT
X1-fefet-w2 bl1 wl2 sl1 n-fefet-LVT
X2-fefet-w2 bl2 wl2 sl2 n-fefet-LVT
X3-fefet-w2 bl3 wl2 sl3 n-fefet-LVT
X4-fefet-w2 bl4 wl2 sl4 n-fefet-LVT
X5-fefet-w2 bl5 wl2 sl5 n-fefet-LVT
X6-fefet-w2 bl6 wl2 sl6 n-fefet-LVT
X7-fefet-w2 bl7 wl2 sl7 n-fefet-LVT
X8-fefet-w2 bl8 wl2 sl8 n-fefet-LVT
X9-fefet-w2 bl9 wl2 sl9 n-fefet-LVT
X10-fefet-w2 bl10 wl2 sl10 n-fefet-LVT
X11-fefet-w2 bl11 wl2 sl11 n-fefet-LVT
X12-fefet-w2 bl12 wl2 sl12 n-fefet-LVT
X13-fefet-w2 bl13 wl2 sl13 n-fefet-LVT
X14-fefet-w2 bl14 wl2 sl14 n-fefet-LVT
X15-fefet-w2 bl15 wl2 sl15 n-fefet-LVT
.ends

*Eventual peripheral circuitry to enable easy implementation of multiple kernel ops
.subckt PERIPHERAL rman se clk in0-0 in0-1 in1-0 in1-1 in2-0 in2-1 bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 wl2 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15 f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20
.ends


**Circuit Definitions** 
*Crossbar array of fefets
X0-crossbar bl0 bl1 bl2 bl3 bl4 bl5 bl6 bl7 bl8 bl9 bl10 bl11 bl12 bl13 bl14 bl15 wl0 wl1 wl2 sl0 sl1 sl2 sl3 sl4 sl5 sl6 sl7 sl8 sl9 sl10 sl11 sl12 sl13 sl14 sl15 CROSSBAR0

*Decoder for enabling word-line loading
X0-decoder cse0 cse1 cse2 cse3 cse0p cse1p cse2p cse3p en0 en1 en2 en3 en4 en5 en6 en7 en8 en9 en10 en11 en12 en13 en14 en15 DECODER4

*NAND gates for word-line loading
X0-nand3 node7 en1 in0-0 node1 NAND3
X1-nand3 node7 en6 in0-1 node2 NAND3

X2-nand3 node7 en2 in1-0 node3 NAND3
X3-nand3 node7 en7 in1-1 node4 NAND3

X4-nand3 node7 en3 in2-0 node5 NAND3
X5-nand3 node7 en8 in2-1 node6 NAND3

X0-nand2 node1 node2 wl0 NAND2
X1-nand2 node3 node4 wl1 NAND2
X2-nand2 node5 node6 wl2 NAND2

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
*X0-counter2 rclk clk cclk0 cclk1 cclk2 cclk3 cclk0p cclk1p cclk2p cclk3p COUNTER-BRC
X0-counter2 rclk se cse0 cse1 cse2 cse3 cse0p cse1p cse2p cse3p COUNTER-BRC

*Adding the MSBs of the least-significant sense amplifier counter outputs to the more significant sense amplifier counter outputs
X0-sense-amplifier-adder csa0-0 csa0-1 csa1-0 csa1-1 csa2-0 csa2-1 csa3-0 csa3-1 csa4-0 csa4-1 csa5-0 csa5-1 csa6-0 csa6-1 csa7-0 csa7-1 csa8-0 csa8-1 csa9-0 csa9-1 csa10-0 csa10-1 csa11-0 csa11-1 csa12-0 csa12-1 csa13-0 csa13-1 csa14-0 csa14-1 csa15-0 csa15-1 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 SAADDER

*Logic to determine the bit place multiplication values (determined by the width of the inputs)
X0-bitplace cse0 cse1 cse2 cse3 cse0p cse1p cse2p cse3p b0 b1 BITPLACE

*Multiply the outputs of the sense amplifier counters by the appropriate bit-place position
X0-mult csa0-0 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 b0 b1 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 MULT

*Logic to reset counters
X0-controller cse0 cse1 cse2 cse3 cse0p cse1p cse2p cse3p rman clk clkp sep cap rsac rclk CONTROLLER

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
X0-p19buf0 p19 p1b90 BUF

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

*Buffers between X-DFF and Y-DFF
X0-x0buf0 x0 x0b0 BUF
X1-x1buf0 x1 x1b0 BUF
X2-x2buf0 x2 x2b0 BUF
X3-x3buf0 x3 x3b0 BUF
X4-x4buf0 x4 x4b0 BUF
X5-x5buf0 x5 x5b0 BUF
X6-x6buf0 x6 x6b0 BUF
X7-x7buf0 x7 x7b0 BUF
X8-x8buf0 x8 x8b0 BUF
X9-x9buf0 x9 x9b0 BUF
X1-x10buf0 x10 x10b0 BUF
X1-x11buf0 x11 x11b0 BUF
X2-x12buf0 x12 x12b0 BUF
X3-x13buf0 x13 x13b0 BUF
X4-x14buf0 x14 x14b0 BUF
X5-x15buf0 x15 x15b0 BUF
X6-x16buf0 x16 x16b0 BUF
X7-x17buf0 x17 x17b0 BUF
X8-x18buf0 x18 x18b0 BUF
X9-x19buf0 x19 x19b0 BUF

X0-y-dff cap rman x0b0 y0 y0p DFF1
X1-y-dff cap rman x1b0 y1 y1p DFF1
X2-y-dff cap rman x2b0 y2 y2p DFF1
X3-y-dff cap rman x3b0 y3 y3p DFF1
X4-y-dff cap rman x4b0 y4 y4p DFF1
X5-y-dff cap rman x5b0 y5 y5p DFF1
X6-y-dff cap rman x6b0 y6 y6p DFF1
X7-y-dff cap rman x7b0 y7 y7p DFF1
X8-y-dff cap rman x8b0 y8 y8p DFF1
X9-y-dff cap rman x9b0 y9 y9p DFF1
X10-y-dff cap rman x10b0 y10 y10p DFF1
X11-y-dff cap rman x11b0 y11 y11p DFF1
X12-y-dff cap rman x12b0 y12 y12p DFF1
X13-y-dff cap rman x13b0 y13 y13p DFF1
X14-y-dff cap rman x14b0 y14 y14p DFF1
X15-y-dff cap rman x15b0 y15 y15p DFF1
X16-y-dff cap rman x16b0 y16 y16p DFF1
X17-y-dff cap rman x17b0 y17 y17p DFF1
X18-y-dff cap rman x18b0 y18 y18p DFF1
X19-y-dff cap rman x19b0 y19 y19p DFF1

**Adders for the final result
X0-f-ha x0 y0 f0 c0 HA1B
X1-f-fa x1 y1 c0 f1 c1 FA1B
X2-f-fa x2 y2 c1 f2 c2 FA1B
X3-f-fa x3 y3 c2 f3 c3 FA1B
X4-f-fa x4 y4 c3 f4 c4 FA1B
X5-f-fa x5 y5 c4 f5 c5 FA1B
X6-f-fa x6 y6 c5 f6 c6 FA1B
X7-f-fa x7 y7 c6 f7 c7 FA1B
X8-f-fa x8 y8 c7 f8 c8 FA1B
X9-f-fa x9 y9 c8 f9 c9 FA1B
X10-f-fa x10 y10 c9 f10 c10 FA1B
X11-f-fa x11 y11 c10 f11 c11 FA1B
X12-f-fa x12 y12 c11 f12 c12 FA1B
X13-f-fa x13 y13 c12 f13 c13 FA1B
X14-f-fa x14 y14 c13 f14 c14 FA1B
X15-f-fa x15 y15 c14 f15 c15 FA1B
X16-f-fa x16 y16 c15 f16 c16 FA1B
X17-f-fa x17 y17 c16 f17 c17 FA1B
X18-f-fa x18 y18 c17 f18 c18 FA1B
X19-f-fa x19 y19 c18 f19 f20 FA1B


**Capacitor Definitions**
Cclk clk GND 5fF
Cse se GND 5fF


**Simulation Control**
Vrman rman GND PWL (0n 1 1n 1 1.001n 0 2n 0 2.001n 1)
Vse se GND PULSE (0 1 5n 1p 1p 2.5n 5n)
Vclk clk GND PULSE (0 1 6.7n 1p 1p 2.5n 5n)

.TRAN 0.001n 60n

.OPTION POST

.END
