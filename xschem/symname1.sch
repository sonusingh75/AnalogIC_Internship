v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -10 -20 -10 {lab=vip}
N -70 30 -20 30 {lab=vim}
N 20 -50 20 -20 {lab=vop}
N 20 -50 70 -50 {lab=vop}
N 20 40 20 60 {lab=vom}
N 20 60 70 60 {lab=vom}
C {vcvs.sym} 20 10 0 0 {name=E1 value=3}
C {iopin.sym} 70 -50 0 0 {name=p1 lab=vop}
C {iopin.sym} 70 60 0 0 {name=p2 lab=vom}
C {iopin.sym} -70 -10 2 0 {name=p3 lab=vip}
C {iopin.sym} -70 30 2 0 {name=p4 lab=vim}
