*** ptat voltage generation
.lib "/opt/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
.include "/opt/pdk/sky130A/libs.ref/

.global vdd gnd
.temp 27


*** vcvs definition

e1 ra1 qp1 net2 gnd gain=1000

*** mosfet definition

xmp1 q1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4
xmp2 q2 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4

*** resistor defintion

xra ra1 qp2 sky130_fd_pr__res_high_po_1p41 l=30 

*** bjt definition

xqp1 gnd gnd qp1 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=1
xqp2 gnd gnd qp2 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=8



