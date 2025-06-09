v {xschem version=3.4.8RC file_version=1.2}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
E {}
N -310 150 -240 150 {lab=#net1}
N -180 150 -120 150 {lab=#net2}
N -120 150 -40 150 {lab=#net2}
N -310 210 -120 210 {lab=GND}
N -120 210 -40 210 {lab=GND}
N -40 190 -40 210 {lab=GND}
N -840 190 -750 190 {lab=vin}
N -840 190 -840 230 {lab=vin}
N -540 190 -500 190 {lab=vg}
N -500 40 -500 190 {lab=vg}
N -500 40 -460 40 {lab=vg}
N -840 370 -840 400 {lab=GND}
N -840 290 -840 370 {lab=GND}
N -430 340 -430 370 {lab=GND}
N -690 190 -600 190 {lab=n1}
N -840 370 -430 370 {lab=GND}
N 0 200 0 370 {lab=GND}
N -310 210 -310 370 {lab=GND}
N -430 370 0 370 {lab=GND}
N -500 200 -350 200 {lab=vg}
N -500 190 -500 200 {lab=vg}
N -430 160 -350 160 {lab=#net3}
N -430 160 -430 280 {lab=#net3}
N -400 40 -10 40 {lab=vout}
N -10 40 -10 140 {lab=vout}
N -10 140 0 140 {lab=vout}
N 0 140 110 140 {lab=vout}
C {simulator_commands_shown.sym} -1480 110 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
op
save all

AC DEC 100 1 10e6
plot v(vout)


.endc
"}
C {vcvs.sym} 0 170 0 0 {name=E1 value=1000}
C {vcvs.sym} -310 180 0 0 {name=E2 value=1000}
C {capa.sym} -120 180 0 0 {name=C1
m=1
value=16pF
footprint=1206
device="ceramic capacitor"}
C {res.sym} -210 150 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -840 260 0 0 {name=V1 value="0 AC 1 " savecurrent=false}
C {capa.sym} -720 190 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -840 400 0 0 {name=l1 lab=GND}
C {res.sym} -570 190 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -430 40 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -430 310 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -840 190 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} -500 110 0 0 {name=p6 sig_type=std_logic lab=vg}
C {lab_wire.sym} -630 190 0 0 {name=p8 sig_type=std_logic lab=n1}
C {lab_wire.sym} 100 140 0 0 {name=p1 sig_type=std_logic lab=vout}
