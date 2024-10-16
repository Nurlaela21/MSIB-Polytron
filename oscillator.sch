v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 30 -260 40 {lab=GND}
N -260 -60 -260 -30 {lab=#net1}
N 150 -10 170 -10 {lab=out}
N -150 10 -150 40 {lab=GND}
N -260 -60 -150 -60 {lab=#net1}
N -150 -60 -150 -10 {lab=#net1}
N -260 40 -150 40 {lab=GND}
C {devices/vsource.sym} -260 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {sky130_fd_pr/corner.sym} 30 110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -190 110 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 1ps 10ns
plot out
op
.endc
"}
C {devices/gnd.sym} -150 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 170 -10 0 1 {name=p1 sig_type=std_logic lab=out}
C {/home/nurlaela/MSIB/ringosc.sym} 0 0 0 0 {name=x1}
