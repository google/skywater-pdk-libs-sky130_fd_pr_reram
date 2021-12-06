v 20201211 2
C 40000 40000 0 0 0 title-B.sym
C 46800 49900 1 0 0 spice-model-1.sym
{
T 46900 50600 5 10 0 1 0 0 1
device=model
T 46800 49900 5 10 1 0 0 0 2
value=rram2_model rram2 rram2_params.scs

T 46800 49900 5 10 1 0 0 0 1
refdes=.model
}
C 40200 41450 1 0 0 spice-directive-1.sym
{
T 40300 41750 5 10 0 1 0 0 1
device=directive
T 40300 41850 5 10 1 1 0 0 1
refdes=.print
T 40300 41450 5 10 1 1 0 0 1
value=TRAN FORMAT=RAW V(VDD) V(0) I(Vsl) V(BL - BE) V(BL) V(WL) V(sl) V(BE)
}
C 40200 40700 1 0 0 spice-directive-1.sym
{
T 40300 41000 5 10 0 1 0 0 1
device=directive
T 40300 41100 5 10 1 1 0 0 1
refdes=.tran
T 40300 40800 5 10 1 1 0 0 1
value=0.01ns 50ns
}
C 46750 48900 1 0 0 spice-include-1.sym
{
T 46850 49200 5 10 0 1 0 0 1
device=include
T 46750 48900 5 10 1 0 0 0 1
refdes=.lib
T 46750 48700 5 10 1 0 0 0 1
value="$PDK_ROOT/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
}
C 41700 44500 1 0 0 vpwl-1.sym
{
T 41900 44650 5 10 1 1 0 0 1
refdes=Vbl
T 42400 45350 5 10 0 0 0 0 1
device=vpwl
T 42400 45550 5 10 0 0 0 0 1
footprint=none
T 50400 44950 5 10 1 1 0 0 1
value=pwl 1ns 0V 10ns 0V 15ns 3V 20ns 0V
}
C 40200 40000 1 0 0 spice-directive-1.sym
{
T 40300 40300 5 10 0 1 0 0 1
device=directive
T 40300 40400 5 10 1 1 0 0 1
refdes=VVDD
T 40300 40100 5 10 1 1 0 0 1
value=VDD 0 1.8V
}
C 46600 44600 1 0 0 asic-nmos-1.sym
{
T 47400 45400 5 10 0 1 0 0 1
refdes=Xwl
T 47400 44900 5 8 1 0 0 0 1
w=7.0
T 47400 44700 5 8 1 0 0 0 1
l=0.15
T 46600 44600 5 10 0 0 0 0 1
value=sky130_fd_pr__nfet_01v8
}
C 44100 43900 1 0 0 vpwl-1.sym
{
T 43700 44450 5 10 1 1 0 0 1
refdes=Vwl
T 44800 44750 5 10 0 0 0 0 1
device=vpwl
T 44800 44950 5 10 0 0 0 0 1
footprint=none
T 50400 44550 5 10 1 1 0 0 1
value=pwl 0ns 0V 8ns 0V 9ns 1V 21ns 1V 22ns 0V 28ns 0V 29ns 3V 41ns 3V 42ns 0V 50ns 0V
}
N 44400 45100 46600 45100 4
{
T 45100 45250 5 10 1 1 0 6 1
netname=wl
}
N 42000 45700 42000 46700 4
C 46900 43200 1 0 0 vpwl-1.sym
{
T 47100 43350 5 10 1 1 0 0 1
refdes=Vsl
T 47600 44050 5 10 0 0 0 0 1
device=vpwl
T 47600 44250 5 10 0 0 0 0 1
footprint=none
T 50400 44150 5 10 1 1 0 0 1
value=pwl 0ns 0V 30ns 0V 35ns 3V 40ns 0V 50ns 0V
}
N 47200 44400 47200 44600 4
{
T 47300 44450 5 10 1 1 0 0 1
netname=sl
}
C 46300 46050 1 0 0 sym-memristor.sym
{
T 46600 46450 5 10 0 0 0 0 1
device=RESISTOR
T 47400 46450 5 10 0 1 270 0 1
refdes=Yrram2 res0
T 46900 46850 5 10 0 1 270 0 1
value=rram2_model
}
N 42000 46700 47200 46700 4
{
T 42000 46600 5 10 1 1 0 0 1
netname=bl
}
N 44400 43900 44400 43200 4
N 42000 43200 48500 43200 4
N 42000 44500 42000 43200 4
C 48300 42900 1 0 0 ground.sym
N 47300 45100 48500 45100 4
N 48500 45100 48500 43200 4
N 47200 45700 47200 45600 4
{
T 47300 45550 5 10 1 1 180 6 1
netname=BE
}
T 50100 44500 9 10 1 0 0 0 1
wl: 
T 50100 44900 9 10 1 0 0 0 1
bl:
T 50100 44100 9 10 1 0 0 0 1
sl:
