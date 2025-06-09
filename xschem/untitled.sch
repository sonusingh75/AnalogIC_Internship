v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -70 -80 -70 {lab=#net1}
N -110 -70 -110 -30 {lab=#net1}
N 90 -70 120 -70 {lab=#net2}
N -110 30 -110 60 {lab=GND}
N 120 -70 130 -70 {lab=#net2}
N 190 -70 220 -70 {lab=#net3}
N 220 -70 350 -70 {lab=#net3}
N 390 -60 390 -20 {lab=GND}
N 230 -220 230 -70 {lab=#net3}
N 390 -220 390 -120 {lab=#net4}
N 230 -220 270 -220 {lab=#net3}
N 330 -220 390 -220 {lab=#net4}
N 230 -290 270 -290 {lab=#net3}
N 230 -290 230 -220 {lab=#net3}
N 330 -290 390 -290 {lab=#net4}
N 390 -290 390 -220 {lab=#net4}
N 300 -110 300 50 {lab=#net5}
N 300 -110 350 -110 {lab=#net5}
N 300 110 300 140 {lab=GND}
N 540 -170 540 -120 {lab=#net4}
N 390 -170 540 -170 {lab=#net4}
N 540 -120 540 -110 {lab=#net4}
N 540 -50 540 -10 {lab=GND}
N -20 -70 30 -70 {lab=#net6}
C {vsource.sym} -110 0 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} -50 -70 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 60 -70 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -110 60 0 0 {name=l1 lab=GND}
C {res.sym} 160 -70 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 390 -90 0 0 {name=E1 value=3}
C {gnd.sym} 390 -20 0 0 {name=l2 lab=GND}
C {res.sym} 300 -220 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 300 -290 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 300 80 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} 300 140 0 0 {name=l3 lab=GND}
C {capa.sym} 540 -80 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 540 -10 0 0 {name=l4 lab=GND}
