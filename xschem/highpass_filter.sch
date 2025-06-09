v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -70 -20 -70 {lab=vncm}
N -110 -70 -110 -30 {lab=vncm}
N 190 -70 230 -70 {lab=virt}
N 230 -220 230 -70 {lab=virt}
N 230 -220 270 -220 {lab=virt}
N -110 110 -110 140 {lab=GND}
N -110 30 -110 110 {lab=GND}
N 300 80 300 110 {lab=GND}
N 300 110 360 110 {lab=GND}
N 40 -70 130 -70 {lab=vn2}
N 430 -100 480 -100 {lab=vout}
N 330 -220 440 -220 {lab=vout}
N 440 -220 440 -100 {lab=vout}
N -110 110 300 110 {lab=GND}
N 310 -70 310 -10 {lab=vcm}
N 300 -10 310 -10 {lab=vcm}
N 300 -10 300 20 {lab=vcm}
N 230 -70 250 -70 {lab=virt}
N 250 -120 250 -70 {lab=virt}
N 250 -120 310 -120 {lab=virt}
N 360 -50 360 110 {lab=GND}
C {vsource.sym} -110 0 0 0 {name=V1 value="0 AC 1 " savecurrent=false}
C {capa.sym} 10 -70 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -110 140 0 0 {name=l1 lab=GND}
C {res.sym} 160 -70 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 300 -220 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 300 50 0 0 {name=V2 value=1.5 savecurrent=false}
C {simulator_commands_shown.sym} -710 -480 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
op
save all
set appendwrite
AC DEC 100 1 10e6
write highpass_filter.raw
**
MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO = 10e6
LET f3db = gain_db - 3.0
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
LET phase_zero_ph = phase_mid - 45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
**
TRAN 1u 5m

.endc
"}
C {lab_wire.sym} -110 -70 0 0 {name=p2 sig_type=std_logic lab=vncm}
C {lab_wire.sym} 230 -150 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 300 0 0 0 {name=p6 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 100 -70 0 0 {name=p1 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 480 -100 0 0 {name=p3 sig_type=std_logic lab=vout}
C {symName.sym} 510 -30 0 0 {name=x1}
