v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -250 -260 -220 {lab=vg}
N -260 -250 -150 -250 {lab=vg}
N -110 -300 -110 -280 {lab=vd}
N -110 -300 30 -300 {lab=vd}
N 30 -300 30 -220 {lab=vd}
N -260 -160 -260 -140 {lab=GND}
N -260 -140 30 -140 {lab=GND}
N 30 -160 30 -140 {lab=GND}
N -110 -220 -110 -140 {lab=GND}
N -140 -140 -140 -110 {lab=GND}
N -110 -250 -80 -250 {lab=GND}
N -80 -250 -80 -200 {lab=GND}
N -110 -200 -80 -200 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -130 -250 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -260 -190 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 30 -190 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -140 -110 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -220 -250 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} -40 -300 0 0 {name=p2 sig_type=std_logic lab=vd}
C {simulator_commands_shown.sym} -630 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP
 DC  Vds 0 1.8 0.1 Vgs 0.4 1.0 0.1
.ENDC  
"}
C {devices/code.sym} -640 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
