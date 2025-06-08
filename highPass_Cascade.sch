v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -210 -100 -210 {lab=#net1}
N -40 -210 20 -210 {lab=#net2}
N 20 -210 100 -210 {lab=#net2}
N -170 -150 20 -150 {lab=GND}
N 20 -150 100 -150 {lab=GND}
N 100 -170 100 -150 {lab=GND}
N -700 -170 -610 -170 {lab=vin}
N -700 -170 -700 -130 {lab=vin}
N -400 -170 -360 -170 {lab=vg}
N -360 -320 -360 -170 {lab=vg}
N -360 -320 -320 -320 {lab=vg}
N -700 10 -700 40 {lab=GND}
N -700 -70 -700 10 {lab=GND}
N -290 -20 -290 10 {lab=GND}
N -550 -170 -460 -170 {lab=n1}
N -700 10 -290 10 {lab=GND}
N 140 -160 140 10 {lab=GND}
N -170 -150 -170 10 {lab=GND}
N -290 10 140 10 {lab=GND}
N -360 -160 -210 -160 {lab=vg}
N -360 -170 -360 -160 {lab=vg}
N -290 -200 -210 -200 {lab=#net3}
N -290 -200 -290 -80 {lab=#net3}
N -260 -320 130 -320 {lab=vout}
N 140 -220 250 -220 {lab=vout}
N 130 -320 170 -320 {lab=vout}
N 170 -320 170 -220 {lab=vout}
C {vcvs.sym} 140 -190 0 0 {name=E1 value=1}
C {vcvs.sym} -170 -180 0 0 {name=E2 value=1000}
C {capa.sym} 20 -180 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {res.sym} -70 -210 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -700 -100 0 0 {name=V1 value="0 AC 1 " savecurrent=false}
C {capa.sym} -580 -170 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -700 40 0 0 {name=l1 lab=GND}
C {res.sym} -430 -170 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -290 -320 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -290 -50 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -700 -170 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} -360 -250 0 0 {name=p6 sig_type=std_logic lab=vg}
C {lab_wire.sym} -490 -170 0 0 {name=p8 sig_type=std_logic lab=n1}
C {simulator_commands_shown.sym} -1270 -520 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
.op
save all


AC DEC 100 1 10e6
**gain measurement
plot vdb(vout)
MEAS AC gainm MAX vdb(vout) FROM=0.1 TO=10e6B
print gainm
LET f3db = gainm-3
print f3db


MEAS AC fpole WHEN vdb(vout)=f3db FALL=1
MEAS AC fzero WHEN vdb(vout)=f3db RISE=1
*MEAS AC fmid WHEN vdb(vout)=34.91580
plot vm(vout)
MEAS AC vom MAX vm(vout) FROM=0.1 TO=10e6B

.endc
"}
C {lab_wire.sym} 240 -220 0 0 {name=p1 sig_type=std_logic lab=vout}
