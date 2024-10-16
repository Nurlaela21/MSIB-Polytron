v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1010 -120 1010 -30 {lab=out}
N -200 -120 1010 -120 {lab=out}
N 120 -30 140 -30 {lab=#net1}
N 140 -30 140 -10 {lab=#net1}
N 140 -10 250 -10 {lab=#net1}
N 550 -30 580 -30 {lab=#net2}
N 580 -30 580 -10 {lab=#net2}
N 580 -10 710 -10 {lab=#net2}
N -200 -120 -200 -10 {lab=out}
N -200 -10 -180 -10 {lab=out}
N -240 90 -170 90 {lab=gnd}
N -180 10 -180 90 {lab=gnd}
N 250 10 250 90 {lab=gnd}
N 710 10 710 80 {lab=gnd}
N -170 90 710 90 {lab=gnd}
N 710 80 710 90 {lab=gnd}
N 1010 -30 1080 -30 {lab=out}
N -290 -150 710 -150 {lab=vdd}
N 710 -150 710 -30 {lab=vdd}
N 250 -150 250 -30 {lab=vdd}
N -180 -150 -180 -30 {lab=vdd}
C {/home/nurlaela/MSIB/inverter2.sym} -30 -10 0 0 {name=x1}
C {/home/nurlaela/MSIB/inverter2.sym} 400 -10 0 0 {name=x2}
C {/home/nurlaela/MSIB/inverter2.sym} 860 -10 0 0 {name=x3}
C {devices/opin.sym} 1080 -30 0 0 {name=p3 lab=out}
C {devices/ipin.sym} -290 -150 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} -240 90 0 0 {name=p2 lab=gnd}
