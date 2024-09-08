v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 650 -1500 0 0 0.4 0.4 {font=Monospace}
T {*min L allowed for LVT nmos and PMOS is 0.35u*} 1110 -1260 0 0 0.4 0.4 {}
N 710 -1060 710 -1010 {
lab=GND}
N 910 -1060 910 -1010 {
lab=GND}
N 710 -1010 910 -1010 {
lab=GND}
N 710 -1190 910 -1190 {
lab=VD}
N 620 -1090 670 -1090 {
lab=VG}
N 820 -1090 870 -1090 {
lab=VG}
N 920 -1440 920 -1380 {
lab=VG}
N 1010 -1440 1010 -1380 {
lab=VD}
N 920 -1320 920 -1260 {
lab=GND}
N 1010 -1320 1010 -1260 {
lab=GND}
N 1020 -1090 1070 -1090 {
lab=VG}
N 1110 -1060 1110 -1010 {
lab=GND}
N 910 -1010 1110 -1010 {
lab=GND}
N 910 -1190 1110 -1190 {
lab=VD}
N 1200 -1090 1250 -1090 {
lab=VG}
N 1290 -1060 1290 -1010 {
lab=GND}
N 1110 -1190 1290 -1190 {
lab=VD}
N 1110 -1010 1290 -1010 {
lab=GND}
N 1370 -1090 1420 -1090 {
lab=VG}
N 1460 -1060 1460 -1010 {
lab=GND}
N 1290 -1190 1460 -1190 {
lab=VD}
N 1290 -1010 1460 -1010 {
lab=GND}
N 710 -1190 710 -1180 {
lab=VD}
N 910 -1190 910 -1180 {
lab=VD}
N 1110 -1190 1110 -1180 {
lab=VD}
N 1290 -1190 1290 -1180 {
lab=VD}
N 1460 -1190 1460 -1180 {
lab=VD}
N 1290 -1090 1290 -1070 {
lab=GND}
N 1290 -1070 1290 -1060 {
lab=GND}
N 1110 -1090 1110 -1060 {
lab=GND}
N 910 -1090 910 -1060 {
lab=GND}
N 710 -1090 710 -1060 {
lab=GND}
N 1460 -1090 1460 -1060 {
lab=GND}
N 1540 -1090 1590 -1090 {
lab=VG}
N 1630 -1060 1630 -1010 {
lab=GND}
N 1460 -1010 1630 -1010 {
lab=GND}
N 1630 -1190 1630 -1180 {
lab=VD}
N 1630 -1090 1630 -1060 {
lab=GND}
N 1710 -1090 1760 -1090 {
lab=VG}
N 1800 -1060 1800 -1010 {
lab=GND}
N 1630 -1010 1800 -1010 {
lab=GND}
N 1800 -1190 1800 -1180 {
lab=VD}
N 1800 -1090 1800 -1060 {
lab=GND}
N 1880 -1090 1930 -1090 {
lab=VG}
N 1970 -1060 1970 -1010 {
lab=GND}
N 1800 -1010 1970 -1010 {
lab=GND}
N 1970 -1190 1970 -1180 {
lab=VD}
N 1970 -1090 1970 -1060 {
lab=GND}
N 1460 -1190 1630 -1190 {
lab=VD}
N 1630 -1190 1800 -1190 {
lab=VD}
N 1800 -1190 1970 -1190 {
lab=VD}
C {devices/lab_pin.sym} 620 -1090 0 0 {name=p1 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 820 -1090 0 0 {name=p2 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 710 -1190 0 0 {name=p3 sig_type=std_logic lab=VD}
C {devices/vsource.sym} 920 -1350 0 0 {name=VG value=1.5 savecurrent=false}
C {devices/vsource.sym} 1010 -1350 0 0 {name=VD value=1.65 savecurrent=false}
C {devices/lab_pin.sym} 920 -1440 0 0 {name=p4 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1010 -1440 0 0 {name=p5 sig_type=std_logic lab=VD}
C {devices/code_shown.sym} 10 -1610 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
.option wnflag=1 
.option savecurrents
.control
save all
save @m.xm1.m0[gm]
save @m.xm2.m0[gm]
save @m.xm3.m0[gm]
save @m.xm4.m0[gm]
save @m.xm5.m0[gm]
save @m.xm6.m0[gm]
save @m.xm7.m0[gm]
save @m.xm8.m0[gm]
save @m.xm1.m0[vth]
save @m.xm2.m0[vth]
save @m.xm3.m0[vth]
save @m.xm4.m0[vth]
save @m.xm5.m0[vth]
save @m.xm6.m0[vth]
save @m.xm7.m0[vth]
save @m.xm8.m0[vth]
save @m.xm1.m0[gds]
save @m.xm2.m0[gds]
save @m.xm3.m0[gds]
save @m.xm4.m0[gds]
save @m.xm5.m0[gds]
save @m.xm6.m0[gds]
save @m.xm7.m0[gds]
save @m.xm8.m0[gds]

dc VG 0.05 3.3 0.05 
** remove zero length vectors to prevent write errors
remzerovec
write /foss/designs/gf180mcu-sim/gmid_nmos_tb.raw
plot @m.xm1.m0[gm]
plot @m.xm2.m0[gm]
plot @m.xm3.m0[gm]
plot @m.xm4.m0[gm]
plot @m.xm5.m0[gm]
plot @m.xm6.m0[gm]
plot @m.xm7.m0[gm]
plot @m.xm8.m0[gm]

wrdata gmid_nmos_1_nfet_03v3_tb.txt @m.xm1.m0[gm] i(VD1) @m.xm1.m0[vth] @m.xm1.m0[gds]
wrdata gmid_nmos_2_nfet_03v3_tb.txt @m.xm2.m0[gm] i(VD2) @m.xm2.m0[vth] @m.xm2.m0[gds]
wrdata gmid_nmos_3_nfet_03v3_tb.txt @m.xm3.m0[gm] i(VD3) @m.xm3.m0[vth] @m.xm3.m0[gds]
wrdata gmid_nmos_4_nfet_03v3_tb.txt @m.xm4.m0[gm] i(VD4) @m.xm4.m0[vth] @m.xm4.m0[gds]
wrdata gmid_nmos_5_nfet_03v3_tb.txt @m.xm5.m0[gm] i(VD5) @m.xm5.m0[vth] @m.xm5.m0[gds]
wrdata gmid_nmos_6_nfet_03v3_tb.txt @m.xm6.m0[gm] i(VD6) @m.xm6.m0[vth] @m.xm6.m0[gds]
wrdata gmid_nmos_7_nfet_03v3_tb.txt @m.xm7.m0[gm] i(VD7) @m.xm7.m0[vth] @m.xm7.m0[gds]
wrdata gmid_nmos_8_nfet_03v3_tb.txt @m.xm8.m0[gm] i(VD8) @m.xm8.m0[vth] @m.xm8.m0[gds]

remzerovec
write /foss/designs/gf180mcu-sim/gmid_nmos_tb.raw
quit 0
.endc
"}
C {devices/gnd.sym} 1110 -1010 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 920 -1260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1010 -1260 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 710 -1410 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/gmid_nmos_tb.raw dc"
}
C {devices/lab_pin.sym} 1020 -1090 0 0 {name=p6 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1200 -1090 0 0 {name=p7 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1370 -1090 0 0 {name=p8 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 710 -1150 0 0 {name=VD1 savecurrent=true}
C {devices/ammeter.sym} 910 -1150 0 0 {name=VD2 savecurrent=true}
C {devices/ammeter.sym} 1110 -1150 0 0 {name=VD3 savecurrent=true}
C {devices/ammeter.sym} 1290 -1150 0 0 {name=VD4 savecurrent=true}
C {devices/ammeter.sym} 1460 -1150 0 0 {name=VD5 savecurrent=true}
C {devices/code_shown.sym} 850 -920 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 890 -1090 0 0 {name=M2
L=0.3u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 690 -1090 0 0 {name=M1
L=0.28u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1090 -1090 0 0 {name=M3
L=0.5u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1270 -1090 0 0 {name=M4
L=1u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1440 -1090 0 0 {name=M5
L=1.5u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 1540 -1090 0 0 {name=p9 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1630 -1150 0 0 {name=VD6 savecurrent=true}
C {symbols/nfet_03v3.sym} 1610 -1090 0 0 {name=M6
L=2u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 1710 -1090 0 0 {name=p10 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1800 -1150 0 0 {name=VD7 savecurrent=true}
C {symbols/nfet_03v3.sym} 1780 -1090 0 0 {name=M7
L=2.5u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 1880 -1090 0 0 {name=p11 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1970 -1150 0 0 {name=VD8 savecurrent=true}
C {symbols/nfet_03v3.sym} 1950 -1090 0 0 {name=M8
L=3u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
