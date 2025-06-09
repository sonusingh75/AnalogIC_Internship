v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -10 -20 -10 {lab=vip}
N 20 -50 20 -20 {lab=vop}
N 20 -50 60 -50 {lab=vop}
N 20 40 20 50 {lab=vom}
N 20 50 60 50 {lab=vom}
N -110 30 -20 30 {lab=vim}
C {vcvs.sym} 20 10 0 0 {name=E1 value=1000}
C {iopin.sym} 60 -50 0 0 {name=p1 lab=vop}
C {iopin.sym} 60 50 0 0 {name=p2 lab=vom}
C {iopin.sym} -110 -10 2 0 {name=p3 lab=vip}
C {iopin.sym} -110 30 2 0 {name=p4 lab=vim}
