v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -80 -10 -10 {lab=out}
N -90 -180 -50 -180 {lab=in}
N -90 -80 -90 20 {lab=in}
N -90 20 -50 20 {lab=in}
N -290 -80 -290 -60 {lab=in}
N -290 -80 -90 -80 {lab=in}
N -10 -80 80 -80 {lab=out}
N -290 0 -290 90 {lab=GND}
N -10 50 -10 90 {lab=GND}
N -10 20 60 20 {lab=GND}
N 60 20 60 90 {lab=GND}
N -10 90 60 90 {lab=GND}
N -410 90 -410 120 {lab=GND}
N -420 -0 -420 90 {lab=GND}
N -10 -240 -10 -210 {lab=#net1}
N 50 -240 50 -180 {lab=#net1}
N -10 -240 50 -240 {lab=#net1}
N -420 -240 -420 -60 {lab=#net1}
N -420 -240 -10 -240 {lab=#net1}
N -90 -180 -90 -80 {lab=in}
N -10 -150 -10 -80 {lab=out}
N -410 90 -290 90 {lab=GND}
N -290 90 -10 90 {lab=GND}
N -420 90 -410 90 {lab=GND}
N -10 -180 50 -180 {lab=#net1}
C {devices/vsource.sym} -420 -30 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -290 -30 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -410 120 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -30 20 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -180 0 0 {name=M2
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
C {devices/lab_pin.sym} 80 -80 0 1 {name=p1 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -290 -80 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 230 -40 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc
"}
C {sky130_fd_pr/corner.sym} 200 -220 0 0 {name=CORNER only_toplevel=false corner=tt}
