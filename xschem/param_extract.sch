v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -20 -170 40 {lab=vgds}
N -170 -20 10 -20 {lab=vgds}
N -60 10 -30 10 {lab=vgds}
N -60 -20 -60 10 {lab=vgds}
N 10 40 10 90 {lab=#net1}
N -170 100 -170 160 {lab=GND}
N -170 160 10 160 {lab=GND}
N 10 150 10 160 {lab=GND}
N 10 10 50 10 {lab=GND}
N 50 10 50 160 {lab=GND}
N 10 160 50 160 {lab=GND}
N -50 160 -50 170 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -170 70 0 0 {name=Vds value=1 savecurrent=false}
C {vsource.sym} 10 120 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -50 170 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -570 -120 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP
 DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
 plot abs(vds#branch)
 plot sqrt(2*abs(vds#branch))
.ENDC

"}
C {lab_wire.sym} -130 -20 0 0 {name=p1 sig_type=std_logic lab=vgds}
C {devices/code.sym} -550 100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
