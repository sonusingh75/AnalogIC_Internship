v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -20 -70 -20 {lab=#net1}
N -10 -20 50 -20 {lab=#net2}
N 50 -20 130 -20 {lab=#net2}
N -140 40 50 40 {lab=#net3}
N 50 40 130 40 {lab=#net3}
N 130 20 130 40 {lab=#net3}
N 170 -30 220 -30 {lab=vop}
N 170 30 230 30 {lab=vom}
N -210 -10 -180 -10 {lab=vinp}
N -210 30 -180 30 {lab=vinm}
C {vcvs.sym} 170 0 0 0 {name=E1 value=1000}
C {vcvs.sym} -140 10 0 0 {name=E2 value=1000}
C {capa.sym} 50 10 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {res.sym} -40 -20 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {iopin.sym} 220 -30 0 0 {name=p1 lab=vop}
C {iopin.sym} 230 30 0 0 {name=p2 lab=vom}
C {iopin.sym} -210 30 2 0 {name=p3 lab=vinm}
C {iopin.sym} -210 -10 2 0 {name=p4 lab=vinp}
C {simulator_commands_shown.sym} -850 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
op
save all
set appendwrite

* Perform AC analysis
ac dec 100 1 10e6
write micTest.raw

* Define gain and phase for differential signal
let vdiff = v(vop) - v(vom)
let gain_db = db(vdiff)
let phase_deg = (180/pi)*ph(vdiff)

* Find max gain in dB
meas ac max_gain max gain_db

* Define -3dB point
let f3db_val = max_gain - 3

* Measure frequencies where gain = f3db
meas ac fzero when gain_db = f3db_val rise=1
meas ac fpole when gain_db = f3db_val fall=1
meas ac fmid when gain_db = max_gain

* Phase measurements at each frequency
meas ac phase_zero find phase_deg at=fzero
meas ac phase_pole find phase_deg at=fpole
meas ac phase_mid find phase_deg at=fmid

* Optional: find frequency where phase = 0 deg (direct method)
meas ac f_phase_zero when phase_deg=0 rise=1

.endc
"}
