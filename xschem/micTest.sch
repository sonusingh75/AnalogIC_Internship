v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -370 10 -370 50 {lab=vin}
N -70 10 -40 10 {lab=virt}
N -30 -140 -30 10 {lab=virt}
N -30 -140 10 -140 {lab=virt}
N 70 -140 130 -140 {lab=vout}
N 180 -20 220 -20 {lab=vout}
N 130 -140 190 -140 {lab=vout}
N 190 -140 190 -20 {lab=vout}
N -370 140 -370 220 {lab=GND}
N -370 110 -370 140 {lab=GND}
N -370 190 40 190 {lab=GND}
N 40 160 40 190 {lab=GND}
N -40 10 -30 10 {lab=virt}
N -220 10 -130 10 {lab=vin1}
N -30 -230 10 -230 {lab=virt}
N -30 -230 -30 -140 {lab=virt}
N 70 -230 190 -230 {lab=vout}
N 190 -230 190 -140 {lab=vout}
N -370 10 -360 10 {lab=vin}
N -300 10 -280 10 {lab=#net1}
N 190 -20 190 60 {lab=vout}
N 190 120 190 190 {lab=GND}
N 160 -20 180 -20 {lab=vout}
N 40 10 40 100 {lab=#net2}
N -30 -40 40 -40 {lab=virt}
N 90 30 90 190 {lab=GND}
N 40 190 190 190 {lab=GND}
C {vsource.sym} -370 80 0 0 {name=V1 value="0 AC 1 sin(0 1m 1e3 0 0 0) " savecurrent=false}
C {capa.sym} -250 10 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 220 0 0 {name=l1 lab=GND}
C {res.sym} -100 10 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 40 -140 3 0 {name=R1
value=300
footprint=1206
device=resistor
m=1}
C {vsource.sym} 40 130 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -370 30 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} -30 -80 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 220 -20 0 0 {name=p5 sig_type=std_logic lab=vout}
C {lab_wire.sym} -140 10 0 0 {name=p3 sig_type=std_logic lab=vin1}
C {res.sym} -330 10 3 0 {name=R3
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 40 -230 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {simulator_commands_shown.sym} -810 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
 op
 save all
set appendwrite
AC DEC 100 1 10e6
 write micTest.raw
**

MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO = 10e6
LET f3db = gain_db-3.0
print f3db
MEAS AC fzero WHEN vdb(vout)=f3db RISE = 1
MEAS AC fpole WHEN vdb(vout)=f3db FALL = 1
MEAS AC fmid WHEN vdb(vout)=gain_db
**phase measurement
LET phase_deg = cph(vout)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
** MEAS fzero fpole using phase 
LET phase_zero_ph = phase_mid-45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
**
TRAN 1u 5m



.endc
"}
C {capa.sym} 190 90 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {symName.sym} 240 50 0 0 {name=x1}
