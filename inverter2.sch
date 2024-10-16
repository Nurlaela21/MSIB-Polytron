v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -70 -10 0 {lab=out}
N -90 -170 -50 -170 {lab=in}
N -90 30 -50 30 {lab=in}
N -10 60 -10 100 {lab=gnd}
N -10 30 60 30 {lab=gnd}
N 60 30 60 100 {lab=gnd}
N -10 100 60 100 {lab=gnd}
N -10 -230 -10 -200 {lab=vdd}
N 50 -230 50 -170 {lab=vdd}
N -10 -230 50 -230 {lab=vdd}
N -10 -140 -10 -70 {lab=out}
N -10 -170 50 -170 {lab=vdd}
N -90 -170 -90 30 {lab=in}
N -10 -70 20 -70 {lab=out}
N -50 -230 -10 -230 {lab=vdd}
N -40 100 -10 100 {lab=gnd}
C {sky130_fd_pr/nfet_01v8.sym} -30 30 0 0 {name=M1
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -30 -170 0 0 {name=M2
L=0.15
W=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -90 -80 0 0 {name=p2 lab=in}
C {devices/opin.sym} 20 -70 0 0 {name=p4 lab=out}
C {devices/ipin.sym} -50 -230 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} -40 100 0 0 {name=p3 lab=gnd}
