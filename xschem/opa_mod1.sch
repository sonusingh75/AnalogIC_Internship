v {xschem version=3.4.8RC file_version=1.2}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
E {}
L 4 -330 -210 -330 -70 {}
L 4 -330 -70 -200 -140 {}
L 4 -330 -210 -200 -140 {}
L 7 -200 -140 -180 -140 {}
L 7 -350 -110 -330 -110 {}
L 7 -350 -170 -330 -170 {}
L 7 -260 -110 -260 -90 {}
B 5 -182.5 -142.5 -177.5 -137.5 {name=vop dir=inout}
B 5 -352.5 -112.5 -347.5 -107.5 {name=vip dir=inout}
B 5 -352.5 -172.5 -347.5 -167.5 {name=vim dir=inout}
B 5 -262.5 -92.5 -257.5 -87.5 {name=vom dir=inout}
T {vop} -205 -144 0 1 0.2 0.2 {}
T {vip} -325 -106 2 1 0.2 0.2 {}
T {vim} -325 -166 2 1 0.2 0.2 {}
T {vom} -256 -115 1 1 0.2 0.2 {}
