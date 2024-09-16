v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 650 -1490 0 0 0.4 0.4 {font=Monospace}
T {*min L allowed for LVT nmos and PMOS is 0.35u*} 1110 -1250 0 0 0.4 0.4 {}
N 710 -1050 710 -1000 {
lab=GND}
N 910 -1050 910 -1000 {
lab=GND}
N 710 -1000 910 -1000 {
lab=GND}
N 710 -1180 910 -1180 {
lab=VD}
N 620 -1080 670 -1080 {
lab=VG}
N 820 -1080 870 -1080 {
lab=VG}
N 920 -1430 920 -1370 {
lab=VG}
N 1010 -1430 1010 -1370 {
lab=VD}
N 920 -1310 920 -1250 {
lab=GND}
N 1010 -1310 1010 -1250 {
lab=GND}
N 1020 -1080 1070 -1080 {
lab=VG}
N 1110 -1050 1110 -1000 {
lab=GND}
N 910 -1000 1110 -1000 {
lab=GND}
N 910 -1180 1110 -1180 {
lab=VD}
N 1200 -1080 1250 -1080 {
lab=VG}
N 1290 -1050 1290 -1000 {
lab=GND}
N 1110 -1180 1290 -1180 {
lab=VD}
N 1110 -1000 1290 -1000 {
lab=GND}
N 1370 -1080 1420 -1080 {
lab=VG}
N 1460 -1050 1460 -1000 {
lab=GND}
N 1290 -1180 1460 -1180 {
lab=VD}
N 1290 -1000 1460 -1000 {
lab=GND}
N 710 -1180 710 -1170 {
lab=VD}
N 910 -1180 910 -1170 {
lab=VD}
N 1110 -1180 1110 -1170 {
lab=VD}
N 1290 -1180 1290 -1170 {
lab=VD}
N 1460 -1180 1460 -1170 {
lab=VD}
N 1290 -1080 1290 -1060 {
lab=GND}
N 1290 -1060 1290 -1050 {
lab=GND}
N 1110 -1080 1110 -1050 {
lab=GND}
N 910 -1080 910 -1050 {
lab=GND}
N 710 -1080 710 -1050 {
lab=GND}
N 1460 -1080 1460 -1050 {
lab=GND}
N 1540 -1080 1590 -1080 {
lab=VG}
N 1630 -1050 1630 -1000 {
lab=GND}
N 1460 -1000 1630 -1000 {
lab=GND}
N 1630 -1180 1630 -1170 {
lab=VD}
N 1630 -1080 1630 -1050 {
lab=GND}
N 1710 -1080 1760 -1080 {
lab=VG}
N 1800 -1050 1800 -1000 {
lab=GND}
N 1630 -1000 1800 -1000 {
lab=GND}
N 1800 -1180 1800 -1170 {
lab=VD}
N 1800 -1080 1800 -1050 {
lab=GND}
N 1880 -1080 1930 -1080 {
lab=VG}
N 1970 -1050 1970 -1000 {
lab=GND}
N 1800 -1000 1970 -1000 {
lab=GND}
N 1970 -1180 1970 -1170 {
lab=VD}
N 1970 -1080 1970 -1050 {
lab=GND}
N 1460 -1180 1630 -1180 {
lab=VD}
N 1630 -1180 1800 -1180 {
lab=VD}
N 1800 -1180 1970 -1180 {
lab=VD}
C {devices/lab_pin.sym} 620 -1080 0 0 {name=p1 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 820 -1080 0 0 {name=p2 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 710 -1180 0 0 {name=p3 sig_type=std_logic lab=VD}
C {devices/vsource.sym} 920 -1340 0 0 {name=VG value=1.65 savecurrent=false}
C {devices/vsource.sym} 1010 -1340 0 0 {name=VD value=1.65 savecurrent=false}
C {devices/lab_pin.sym} 920 -1430 0 0 {name=p4 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1010 -1430 0 0 {name=p5 sig_type=std_logic lab=VD}
C {devices/code_shown.sym} 370 -1810 0 0 {name=NGSPICE
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
save @m.xm1.m0[cgg]
save @m.xm2.m0[cgg]
save @m.xm3.m0[cgg]
save @m.xm4.m0[cgg]
save @m.xm5.m0[cgg]
save @m.xm6.m0[cgg]
save @m.xm7.m0[cgg]
save @m.xm8.m0[cgg]
save @m.xm1.m0[cgd]
save @m.xm2.m0[cgd]
save @m.xm3.m0[cgd]
save @m.xm4.m0[cgd]
save @m.xm5.m0[cgd]
save @m.xm6.m0[cgd]
save @m.xm7.m0[cgd]
save @m.xm8.m0[cgd]
save @m.xm1.m0[cgs]
save @m.xm2.m0[cgs]
save @m.xm3.m0[cgs]
save @m.xm4.m0[cgs]
save @m.xm5.m0[cgs]
save @m.xm6.m0[cgs]
save @m.xm7.m0[cgs]
save @m.xm8.m0[cgs]

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

wrdata /foss/designs/gf180mcu-sim/gmid_nmos_1_nfet_01v8_lvt_tb.txt @m.xm1.m0[gm] i(VD1) @m.xm1.m0[vth] @m.xm1.m0[gds] @m.xm1.m0[cgg] @m.xm1.m0[cgs] @m.xm1.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_2_nfet_01v8_lvt_tb.txt @m.xm2.m0[gm] i(VD2) @m.xm2.m0[vth] @m.xm2.m0[gds] @m.xm2.m0[cgg] @m.xm2.m0[cgs] @m.xm2.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_3_nfet_01v8_lvt_tb.txt @m.xm3.m0[gm] i(VD3) @m.xm3.m0[vth] @m.xm3.m0[gds] @m.xm3.m0[cgg] @m.xm3.m0[cgs] @m.xm3.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_4_nfet_01v8_lvt_tb.txt @m.xm4.m0[gm] i(VD4) @m.xm4.m0[vth] @m.xm4.m0[gds] @m.xm4.m0[cgg] @m.xm4.m0[cgs] @m.xm4.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_5_nfet_01v8_lvt_tb.txt @m.xm5.m0[gm] i(VD5) @m.xm5.m0[vth] @m.xm5.m0[gds] @m.xm5.m0[cgg] @m.xm5.m0[cgs] @m.xm5.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_6_nfet_01v8_lvt_tb.txt @m.xm6.m0[gm] i(VD6) @m.xm6.m0[vth] @m.xm6.m0[gds] @m.xm6.m0[cgg] @m.xm6.m0[cgs] @m.xm6.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_7_nfet_01v8_lvt_tb.txt @m.xm7.m0[gm] i(VD7) @m.xm7.m0[vth] @m.xm7.m0[gds] @m.xm7.m0[cgg] @m.xm7.m0[cgs] @m.xm7.m0[cgd]
wrdata /foss/designs/gf180mcu-sim/gmid_nmos_8_nfet_01v8_lvt_tb.txt @m.xm8.m0[gm] i(VD8) @m.xm8.m0[vth] @m.xm8.m0[gds] @m.xm8.m0[cgg] @m.xm8.m0[cgs] @m.xm8.m0[cgd]

remzerovec
write /foss/designs/gf180mcu-sim/gmid_nmos_tb.raw
quit 0
.endc
"}
C {devices/gnd.sym} 1110 -1000 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 920 -1250 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1010 -1250 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 710 -1400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/gmid_nmos_tb.raw dc"
}
C {devices/lab_pin.sym} 1020 -1080 0 0 {name=p6 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1200 -1080 0 0 {name=p7 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1370 -1080 0 0 {name=p8 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 710 -1140 0 0 {name=VD1 savecurrent=true}
C {devices/ammeter.sym} 910 -1140 0 0 {name=VD2 savecurrent=true}
C {devices/ammeter.sym} 1110 -1140 0 0 {name=VD3 savecurrent=true}
C {devices/ammeter.sym} 1290 -1140 0 0 {name=VD4 savecurrent=true}
C {devices/ammeter.sym} 1460 -1140 0 0 {name=VD5 savecurrent=true}
C {devices/code_shown.sym} 850 -910 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 890 -1080 0 0 {name=M2
L=0.3u
W=10u
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
C {symbols/nfet_03v3.sym} 690 -1080 0 0 {name=M1
L=0.28u
W=10u
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
C {symbols/nfet_03v3.sym} 1090 -1080 0 0 {name=M3
L=0.5u
W=10u
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
C {symbols/nfet_03v3.sym} 1270 -1080 0 0 {name=M4
L=1u
W=10u
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
C {symbols/nfet_03v3.sym} 1440 -1080 0 0 {name=M5
L=1.5u
W=10u
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
C {devices/lab_pin.sym} 1540 -1080 0 0 {name=p9 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1630 -1140 0 0 {name=VD6 savecurrent=true}
C {symbols/nfet_03v3.sym} 1610 -1080 0 0 {name=M6
L=2u
W=10u
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
C {devices/lab_pin.sym} 1710 -1080 0 0 {name=p10 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1800 -1140 0 0 {name=VD7 savecurrent=true}
C {symbols/nfet_03v3.sym} 1780 -1080 0 0 {name=M7
L=2.5u
W=10u
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
C {devices/lab_pin.sym} 1880 -1080 0 0 {name=p11 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1970 -1140 0 0 {name=VD8 savecurrent=true}
C {symbols/nfet_03v3.sym} 1950 -1080 0 0 {name=M8
L=3u
W=10u
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
