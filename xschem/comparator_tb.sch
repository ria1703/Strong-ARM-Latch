v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 800 -820 800 -800 {
lab=GND}
N 800 -910 800 -880 {
lab=VDD}
N 1010 -710 1010 -690 {
lab=Vp}
N 1010 -790 1010 -770 {
lab=Vn}
N 1010 -690 1100 -690 {
lab=Vp}
N 1100 -690 1100 -670 {
lab=Vp}
N 1100 -610 1100 -590 {
lab=GND}
N 1100 -690 1170 -690 {
lab=Vp}
N 1170 -790 1170 -690 {
lab=Vp}
N 910 -910 910 -880 {
lab=CLK}
N 1340 -990 1400 -990 {
lab=Vp}
N 1340 -970 1400 -970 {
lab=Vn}
N 910 -820 910 -790 {
lab=GND}
N 1330 -710 1330 -670 {
lab=GND}
N 1330 -810 1330 -770 {
lab=GND}
N 1700 -990 1790 -990 {
lab=VDD}
N 1700 -970 1750 -970 {
lab=GND}
N 1700 -930 1730 -930 {
lab=CLK}
N 1700 -950 1740 -950 {
lab=CLK}
N 1700 -910 1740 -910 {
lab=op}
C {devices/TT_models.sym} 950 -1180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

"
spice_ignore=falsename=s1 only_toplevel=false value=blabla}
C {devices/vsource.sym} 800 -850 0 0 {name=Vdd value=1.8}
C {devices/vsource.sym} 1010 -740 0 0 {name=Vn value="pulse(-10m 10m 1ps 1ps 1ps 4ns 8ns)"}
C {devices/lab_pin.sym} 1010 -790 0 0 {name=l24 sig_type=std_logic lab=Vn}
C {devices/vsource.sym} 1100 -640 0 0 {name=Vcm value=1.2}
C {devices/lab_pin.sym} 1170 -790 2 0 {name=l25 sig_type=std_logic lab=Vp}
C {devices/code_shown.sym} 2030 -770 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 50n
.save all"}
C {devices/vsource.sym} 910 -850 0 0 {name=V1 value="pulse(1.8 0 1ps 1ps 1ps 2ns 4ns)"}
C {devices/lab_pin.sym} 910 -910 0 0 {name=l22 sig_type=std_logic lab=CLK}
C {comparator.sym} 1550 -950 0 0 {name=x1}
C {devices/lab_pin.sym} 1340 -970 0 0 {name=l1 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 1340 -990 0 0 {name=l2 sig_type=std_logic lab=Vp}
C {devices/gnd.sym} 1330 -670 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1330 -810 2 0 {name=l4 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1100 -590 2 0 {name=l5 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 800 -800 2 0 {name=l7 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 910 -790 2 0 {name=l8 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 800 -910 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1790 -990 2 0 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1750 -970 2 0 {name=l11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1730 -930 2 0 {name=l12 sig_type=std_logic lab=CLK}
C {devices/res.sym} 1330 -740 0 0 {name=R1
value=0
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1740 -950 2 0 {name=l6 sig_type=std_logic lab=on}
C {devices/lab_pin.sym} 1740 -910 2 0 {name=l13 sig_type=std_logic lab=op
}
