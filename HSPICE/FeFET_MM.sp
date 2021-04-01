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

*First input
Vin0-1 in0-1 0 1
Vin0-0 in0-0 0 0

*Second input
Vin1-1 in1-1 0 0
Vin1-0 in1-0 0 1

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
.subckt DFF clk r d q qp
X0-nand2 d r node2 node1 NAND3
X1-nand2 clk r node4 node3 NAND3
X2-nand2 node1 node3 node4 NAND2
X3-nand2 node2 r q qp NAND3
X4-nand2 node3 qp q NAND2
X0-nand3 clk node1 node3 node2 NAND3
Cq q GND 20fF
Cqp qp GND 20fF
.ends

*T-flip flop
.subckt TFF clk r t q qp
X0-inv t tp INV
X1-inv dp d INV
X0-nor2 q tp node1 NOR2
X1-nor2 qp t node2 NOR2
X2-nor2 node1 node2 dp NOR2
X0-dff clk r d q qp DFF
.ends

*First counter type, binary synchronous counter, 2bit output
.subckt COUNTER-BSC clk r in c0 c1 cp0 cp1
X0-inv node1 node2 INV
X0-nand2 in c0 node1 NAND2
X0-tff clk r in c0 cp0 TFF
X1-tff clk r node2 c1 cp1 TFF
.ends

*Second counter type, binary ripple-counter, 3bit output
.subckt COUNTER-BRC r in c0 c1 c2 cp0 cp1 cp2
X0-inv r node1 INV
X0-nand2 node1 c2 node2 NAND2
X0-tff in node2 VDD c0 cp0 TFF
X1-tff cp0 node2 VDD c1 cp1 TFF
X2-tff cp1 node2 VDD c2 cp2 TFF
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

*Full-adder, carry-lookahead
.subckt FACL a b cin s cout
X0-xor2 a b node1 XOR2
X1-xor2 node1 cin s XOR2
X0-nand2 node1 cin node2 NAND2
X1-nand2 a b node3 NAND2
X2-nand2 node2 node3 cout NAND2
.ends

*Multiplier, 4bit x 2bit
.subckt MULT a0 a1 a2 a3 b0 b1 p0 p1 p2 p3 p4 p5
X0-nand2 a0 b0 node1 NAND2
X1-nand2 a0 b1 node2 NAND2
X2-nand2 a1 b0 node3 NAND2
X3-nand2 a1 b1 node4 NAND2
X4-nand2 a2 b0 node5 NAND2
X5-nand2 a2 b1 node6 NAND2
X6-nand2 a3 b0 node7 NAND2
X7-nand2 a3 b1 node8 NAND2

X0-inv node1 p0 INV
X1-inv node2 node9 INV
X2-inv node3 node10 INV
X3-inv node4 node11 INV
X4-inv node5 node12 INV
X5-inv node6 node13 INV
X6-inv node7 node14 INV
X7-inv node8 node15 INV

X0-ha node9 node10 p1 c1 HA1B
X0-fa node11 node12 c1 p2 c2 FA1B
X1-fa node13 node14 c2 p3 c3 FA1B
X1-ha node15 c3 p4 p5 HA1B

.ends

.subckt DECODER3 a b c ap bp cp o1 o2 o3 o4
X0-nand3 ap bp c o1p NAND3
X1-nand3 ap b cp o2p NAND3
X2-nand3 ap b c o3p NAND3
X3-nand3 a bp cp o4p NAND3

X0-inv o1p o1 INV
X1-inv o2p o2 INV
X2-inv o3p o3 INV
X3-inv o4p o4 INV
.ends


**Circuit Definitions** 
*Crossbar array of fefets
X0-fefet-w0 bl0 wl0 sl0 n-fefet-LVT
X1-fefet-w0 bl1 wl0 sl1 n-fefet-LVT
X2-fefet-w0 bl2 wl0 sl2 n-fefet-LVT
*X3-fefet-w0 bl3 wl0 sl3 n-fefet-LVT
*X4-fefet-w0 bl4 wl0 sl4 n-fefet-LVT
*X5-fefet-w0 bl5 wl0 sl5 n-fefet-LVT
*X6-fefet-w0 bl6 wl0 sl6 n-fefet-LVT
*X7-fefet-w0 bl7 wl0 sl7 n-fefet-LVT
*X8-fefet-w0 bl8 wl0 sl8 n-fefet-LVT
*X9-fefet-w0 bl9 wl0 sl9 n-fefet-LVT
*X10-fefet-w0 bl10 wl0 sl10 n-fefet-LVT
*X11-fefet-w0 bl11 wl0 sl11 n-fefet-LVT
*X12-fefet-w0 bl12 wl0 sl12 n-fefet-LVT
*X13-fefet-w0 bl13 wl0 sl13 n-fefet-LVT
*X14-fefet-w0 bl14 wl0 sl14 n-fefet-LVT
*X15-fefet-w0 bl15 wl0 sl15 n-fefet-LVT

X0-fefet-w1 bl0 wl1 sl0 n-fefet-LVT
X1-fefet-w1 bl1 wl1 sl1 n-fefet-LVT
X2-fefet-w1 bl2 wl1 sl2 n-fefet-LVT
*X3-fefet-w1 bl3 wl1 sl3 n-fefet-LVT
*X4-fefet-w1 bl4 wl1 sl4 n-fefet-LVT
*X5-fefet-w1 bl5 wl1 sl5 n-fefet-LVT
*X6-fefet-w1 bl6 wl1 sl6 n-fefet-LVT
*X7-fefet-w1 bl7 wl1 sl7 n-fefet-LVT
*X8-fefet-w1 bl8 wl1 sl8 n-fefet-LVT
*X9-fefet-w1 bl9 wl1 sl9 n-fefet-LVT
*X10-fefet-w1 bl10 wl1 sl10 n-fefet-LVT
*X11-fefet-w1 bl11 wl1 sl11 n-fefet-LVT
*X12-fefet-w1 bl12 wl1 sl12 n-fefet-LVT
*X13-fefet-w1 bl13 wl1 sl13 n-fefet-LVT
*X14-fefet-w1 bl14 wl1 sl14 n-fefet-LVT
*X15-fefet-w1 bl15 wl1 sl15 n-fefet-LVT

*Decoder for enabling word-line loading
X0-decoder se2 se1 se0 se2p se1p se0p en1 en2 en3 en4 DECODER3

*NAND gates for word-line loading
X0-nand3 node6 en1 in0-0 node1 NAND3
X1-nand3 node6 en3 in0-1 node2 NAND3
X2-nand3 node6 en2 in1-0 node3 NAND3
X3-nand3 node6 en4 in1-1 node4 NAND3

X0-nand2 node1 node2 wl0 NAND2
X1-nand2 node3 node4 wl1 NAND2

X1-inv se node5 INV
X2-inv node5 node6 INV

*Delay gates for timing of the sense enable signal

*Sense amplifiers at output of each bitline of the crossbar
X0-sa se bl0 sa0out SA
X1-sa se bl1 sa1out SA
X2-sa se bl2 sa2out SA

*Counters after each sense-amp (sized to the number of inputs)
X0-counter clk rsac sa0out csa0-0 csa0-1 csa0-0p csa0-1p COUNTER-BSC
X1-counter clk rsac sa1out csa1-0 csa1-1 csa1-0p csa1-1p COUNTER-BSC
X2-counter clk rsac sa2out csa2-0 csa2-1 csa2-0p csa2-1p COUNTER-BSC

*Counter to track the number of clock cycles that have passed (this should be sized as the number of inputs x size of weights)
*These outputs will be used to determine the appropriate number to multiply by for each bit-place of the final output. I.e. clock cycles are grouped into sets by the number of inputs. If there are two inputs, then the first two clock cycles are for the LSB of these inputs, and the LSB of the final output, so the multiplier should be 2^0. The next two clock cycles are for the next bit-place of each input/output, and ht emultiplier should be 2^1. 
X0-counter2 rclk clk cclk0 cclk1 cclk2 cclk0p cclk1p cclk2p COUNTER-BRC
X1-counter2 rclk se se0 se1 se2 se0p se1p se2p COUNTER-BRC

*Adding the MSBs of the least-significant sense amplifier counter outputs to the more significant sense amplifier counter outputs
*First bit (from the addition) and carry-out
X0-ha csa0-1 csa1-0 s0 cout0 HA1B
X0-fa GND csa1-1 cout0 t0-0 t0-1 FA1B

*Second, third, and fourth addition bits
X1-ha t0-0 csa2-0 s1 cout1 HA1B
X1-fa t0-1 csa2-1 cout1 s2 s3 FA1B

*Logic to determine the bit place multiplication values
X0-nor3 cclk0 cclk2 cclk1p b0 NOR3
X1-nor3 cclk0 cclk1 cclk2p b1 NOR3

*Multiply the outputs of the sense amplifier counters by the appropriate bit-place position
X0-mult csa0-0 s0 s1 s2 b0 b1 p0 p1 p2 p3 p4 p5 MULT


*Logic to determine when to capture values
X2-nor3 clk se cclk0 cap NOR3

*Invertering the capture signal for reseting of the sense-amplifier counters (i.e. reset after each bit-place of the inputs has been captured) 
X0-inv cap r INV
X0-tgate r rclk T
X1-tgate r rsac T

*Flip flops to capture values from the multiplier
*One set of flip flops feeds into the second set, and the outputs of the two sets are added together to get the final result
X0-dff cap VDD p0 x0 x0p DFF
X1-dff cap VDD p1 x1 x1p DFF
X2-dff cap VDD p2 x2 x2p DFF
X3-dff cap VDD p3 x3 x3p DFF
X4-dff cap VDD p4 x4 x4p DFF
X5-dff cap VDD p5 x5 x5p DFF

X6-dff cap VDD x0 y0 y0p DFF
X7-dff cap VDD x1 y1 y1p DFF
X8-dff cap VDD x2 y2 y2p DFF
X9-dff cap VDD x3 y3 y3p DFF
X10-dff cap VDD x4 y4 y4p DFF
X11-dff cap VDD x5 y5 y5p DFF

**Adders for the final result
X2-ha x0 y0 f0 c0 HA1B
X2-fa x1 y1 c0 f1 c1 FA1B
X3-fa x2 y2 c1 f2 c2 FA1B
X4-fa x3 y3 c2 f3 c3 FA1B
X5-fa x4 y4 c3 f4 c4 FA1B
X6-fa x5 y5 c4 f5 f6 FA1B


**Capacitor Definitions**
Cclk clk GND 5fF
Cbl0 bl0 GND 5fF
Cbl1 bl1 GND 5fF
Cbl2 bl2 GND 5fF
Csl0 sl0 GND 5fF
Csl1 sl1 GND 5fF
Csl2 sl2 GND 5fF
Cse se GND 5fF
C5 node5 GND 20fF
*Cr1 r1 GND 5fF

**Simulation Control**
Vse se GND PULSE (0 1 5n 1p 1p 2.5n 5n)
Vclk clk GND PULSE (0 1 6.5n 1p 1p 2.5n 5n)

.TRAN 0.001n 30n

.OPTION POST

.END
