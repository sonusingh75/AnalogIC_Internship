v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 40 -310 40 {lab=vncm}
N -400 40 -400 80 {lab=vncm}
N -100 40 -60 40 {lab=virt}
N -60 -110 -60 40 {lab=virt}
N -60 -110 -20 -110 {lab=virt}
N -400 220 -400 250 {lab=GND}
N -400 140 -400 220 {lab=GND}
N 10 190 10 220 {lab=GND}
N 10 220 70 220 {lab=GND}
N -250 40 -160 40 {lab=vn2}
N 140 10 190 10 {lab=vout}
N 40 -110 150 -110 {lab=vout}
N 150 -110 150 10 {lab=vout}
N -400 220 10 220 {lab=GND}
N 20 40 20 100 {lab=vcm}
N 10 100 20 100 {lab=vcm}
N 10 100 10 130 {lab=vcm}
N -60 40 -40 40 {lab=virt}
N -40 -10 -40 40 {lab=virt}
N -40 -10 20 -10 {lab=virt}
N 70 60 70 220 {lab=GND}
C {vsource.sym} -400 110 0 0 {name=V1 value="0 AC 1 " savecurrent=false}
C {capa.sym} -280 40 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -400 250 0 0 {name=l1 lab=GND}
C {res.sym} -130 40 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 10 -110 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 10 160 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -400 40 0 0 {name=p2 sig_type=std_logic lab=vncm}
C {lab_wire.sym} -60 -40 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 10 110 0 0 {name=p6 sig_type=std_logic lab=vcm}
C {lab_wire.sym} -190 40 0 0 {name=p1 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 190 10 0 0 {name=p3 sig_type=std_logic lab=vout}
C {symName.sym} 220 80 0 0 {name=x1}
