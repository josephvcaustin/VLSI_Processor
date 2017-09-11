*********************************************************
*                                                       *
* Example HSPICE netlist for our AMI 0.5u technology    *
* James Stine, OSU                                      *
*                                                       *
* to run this file: hspice filename.sp                  *
* to display results: cscope (then open filename.sw0)   *
*                                                       *
*********************************************************

*****************************************
* Voltage Sources
*
* Format: Vname pin1 pin2 DC voltage
*****************************************
VSelect Select gnd 5V
VSubtract Subtract gnd 0V 

VALU_PC ALU_PC gnd pulse 0 5V 1ns 0ps 0ps 4ns 5ns
VALU_DS ALU_DS gnd pulse 0 5V 0ns 0ps 0ps 5ns 10ns
VALU_AS ALU_AS gnd pulse 5 0V 0ns 0ps 0ps 5ns 10ns
 
VREG_PC REG_PC gnd pulse 0 5V 1ns 0ps 0ps 4ns 5ns
VREG_DS REG_DS gnd pulse 5 0V 0ns 0ps 0ps 5ns 10ns
VREG_AS REG_AS gnd pulse 0 5V 0ns 0ps 0ps 5ns 10ns

VA2 A2 gnd 0V
VA1 A1 gnd 0V
VA0 A0 gnd 0V

VD2 D2 gnd 0V
VD1 D1 gnd 0V
VD0 D0 gnd 0V

VI7 I7 gnd 0V
VI6 I6 gnd 0V
VI5 I5 gnd 0V
VI4 I4 gnd 0V
VI3 I3 gnd 0V
VI2 I2 gnd 0V
VI1 I1 gnd 0V
VI0 I0 gnd 5V
*****************************************************************
* Transistors
*
* Format: Mnumber Drain Gate Source Bulk Model Length Width
*****************************************************************

* SPICE3 file created from complete_design.ext - technology: scmos

.option scale=0.3u

M1000 vdd alu_reg_0/reg_bit1_7/A_ O7 vdd CMOSPTT w=8 l=2
+  ad=28110 pd=14280 as=200 ps=100
M1001 alu_reg_0/reg_bit1_7/A_ O7 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1002 alu_reg_0/reg_bit1_7/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_7/A_ O7 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1003 alu_reg_0/reg_bit1_7/A_ O7 alu_reg_0/reg_bit1_7/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1004 alu_reg_0/reg_bit1_7/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=18152 ps=10572
M1005 O7 ALU_As alu_reg_0/reg_bit1_7/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1006 alu_reg_0/reg_bit1_7/Bl_ ALU_As alu_reg_0/reg_bit1_7/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1007 alu_reg_0/reg_bit1_7/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_7/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1008 alu_reg_0/reg_bit1_7/Bl alu_reg_0/reg_bit1_7/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_7/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 alu_reg_0/reg_bit1_7/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_7/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_7/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1010 vdd S7 alu_reg_0/reg_bit1_7/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 alu_reg_0/reg_bit1_7/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_7/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1012 alu_reg_0/reg_bit1_7/Bl ALU_Ds alu_reg_0/reg_bit1_7/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1013 alu_reg_0/reg_bit1_7/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_7/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1014 gnd S7 alu_reg_0/reg_bit1_7/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 alu_reg_0/reg_bit1_7/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1016 gnd S7 alu_reg_0/reg_bit1_7/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1017 alu_reg_0/reg_bit1_7/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1018 vdd S7 alu_reg_0/reg_bit1_7/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1019 vdd alu_reg_0/reg_bit1_7/sram_4/a_5_n27# alu_reg_0/reg_bit1_7/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1020 alu_reg_0/reg_bit1_7/sram_4/a_5_n27# alu_reg_0/reg_bit1_7/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1021 gnd alu_reg_0/reg_bit1_7/sram_4/a_5_n27# alu_reg_0/reg_bit1_7/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1022 alu_reg_0/reg_bit1_7/sram_4/a_5_n27# alu_reg_0/reg_bit1_7/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1023 alu_reg_0/reg_bit1_7/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_7/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1024 alu_reg_0/reg_bit1_7/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1025 alu_reg_0/reg_bit1_7/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 alu_reg_0/reg_bit1_7/Bl_ ALU_Pc alu_reg_0/reg_bit1_7/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1027 vdd ALU_Pc alu_reg_0/reg_bit1_7/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1028 vdd alu_reg_0/reg_bit1_6/A_ O6 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1029 alu_reg_0/reg_bit1_6/A_ O6 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1030 alu_reg_0/reg_bit1_6/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_6/A_ O6 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1031 alu_reg_0/reg_bit1_6/A_ O6 alu_reg_0/reg_bit1_6/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1032 alu_reg_0/reg_bit1_6/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1033 O6 ALU_As alu_reg_0/reg_bit1_6/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1034 alu_reg_0/reg_bit1_6/Bl_ ALU_As alu_reg_0/reg_bit1_6/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1035 alu_reg_0/reg_bit1_6/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_6/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1036 alu_reg_0/reg_bit1_6/Bl alu_reg_0/reg_bit1_6/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_6/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1037 alu_reg_0/reg_bit1_6/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_6/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_6/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1038 vdd S6 alu_reg_0/reg_bit1_6/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1039 alu_reg_0/reg_bit1_6/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_6/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1040 alu_reg_0/reg_bit1_6/Bl ALU_Ds alu_reg_0/reg_bit1_6/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1041 alu_reg_0/reg_bit1_6/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_6/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1042 gnd S6 alu_reg_0/reg_bit1_6/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 alu_reg_0/reg_bit1_6/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1044 gnd S6 alu_reg_0/reg_bit1_6/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1045 alu_reg_0/reg_bit1_6/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1046 vdd S6 alu_reg_0/reg_bit1_6/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1047 vdd alu_reg_0/reg_bit1_6/sram_4/a_5_n27# alu_reg_0/reg_bit1_6/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1048 alu_reg_0/reg_bit1_6/sram_4/a_5_n27# alu_reg_0/reg_bit1_6/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1049 gnd alu_reg_0/reg_bit1_6/sram_4/a_5_n27# alu_reg_0/reg_bit1_6/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1050 alu_reg_0/reg_bit1_6/sram_4/a_5_n27# alu_reg_0/reg_bit1_6/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1051 alu_reg_0/reg_bit1_6/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1052 alu_reg_0/reg_bit1_6/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1053 alu_reg_0/reg_bit1_6/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 alu_reg_0/reg_bit1_6/Bl_ ALU_Pc alu_reg_0/reg_bit1_6/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1055 vdd ALU_Pc alu_reg_0/reg_bit1_6/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1056 vdd alu_reg_0/reg_bit1_5/A_ O5 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1057 alu_reg_0/reg_bit1_5/A_ O5 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1058 alu_reg_0/reg_bit1_5/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_5/A_ O5 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1059 alu_reg_0/reg_bit1_5/A_ O5 alu_reg_0/reg_bit1_5/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1060 alu_reg_0/reg_bit1_5/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1061 O5 ALU_As alu_reg_0/reg_bit1_5/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1062 alu_reg_0/reg_bit1_5/Bl_ ALU_As alu_reg_0/reg_bit1_5/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1063 alu_reg_0/reg_bit1_5/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_5/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1064 alu_reg_0/reg_bit1_5/Bl alu_reg_0/reg_bit1_5/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_5/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1065 alu_reg_0/reg_bit1_5/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_5/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_5/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1066 vdd S5 alu_reg_0/reg_bit1_5/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1067 alu_reg_0/reg_bit1_5/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_5/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1068 alu_reg_0/reg_bit1_5/Bl ALU_Ds alu_reg_0/reg_bit1_5/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1069 alu_reg_0/reg_bit1_5/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_5/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1070 gnd S5 alu_reg_0/reg_bit1_5/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1071 alu_reg_0/reg_bit1_5/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1072 gnd S5 alu_reg_0/reg_bit1_5/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1073 alu_reg_0/reg_bit1_5/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1074 vdd S5 alu_reg_0/reg_bit1_5/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1075 vdd alu_reg_0/reg_bit1_5/sram_4/a_5_n27# alu_reg_0/reg_bit1_5/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1076 alu_reg_0/reg_bit1_5/sram_4/a_5_n27# alu_reg_0/reg_bit1_5/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1077 gnd alu_reg_0/reg_bit1_5/sram_4/a_5_n27# alu_reg_0/reg_bit1_5/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1078 alu_reg_0/reg_bit1_5/sram_4/a_5_n27# alu_reg_0/reg_bit1_5/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1079 alu_reg_0/reg_bit1_5/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1080 alu_reg_0/reg_bit1_5/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1081 alu_reg_0/reg_bit1_5/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1082 alu_reg_0/reg_bit1_5/Bl_ ALU_Pc alu_reg_0/reg_bit1_5/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 vdd ALU_Pc alu_reg_0/reg_bit1_5/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1084 vdd alu_reg_0/reg_bit1_4/A_ O4 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1085 alu_reg_0/reg_bit1_4/A_ O4 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1086 alu_reg_0/reg_bit1_4/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_4/A_ O4 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1087 alu_reg_0/reg_bit1_4/A_ O4 alu_reg_0/reg_bit1_4/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1088 alu_reg_0/reg_bit1_4/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1089 O4 ALU_As alu_reg_0/reg_bit1_4/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1090 alu_reg_0/reg_bit1_4/Bl_ ALU_As alu_reg_0/reg_bit1_4/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1091 alu_reg_0/reg_bit1_4/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_4/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1092 alu_reg_0/reg_bit1_4/Bl alu_reg_0/reg_bit1_4/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_4/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1093 alu_reg_0/reg_bit1_4/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_4/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_4/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1094 vdd S4 alu_reg_0/reg_bit1_4/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1095 alu_reg_0/reg_bit1_4/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_4/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1096 alu_reg_0/reg_bit1_4/Bl ALU_Ds alu_reg_0/reg_bit1_4/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1097 alu_reg_0/reg_bit1_4/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_4/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1098 gnd S4 alu_reg_0/reg_bit1_4/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1099 alu_reg_0/reg_bit1_4/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1100 gnd S4 alu_reg_0/reg_bit1_4/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1101 alu_reg_0/reg_bit1_4/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1102 vdd S4 alu_reg_0/reg_bit1_4/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1103 vdd alu_reg_0/reg_bit1_4/sram_4/a_5_n27# alu_reg_0/reg_bit1_4/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1104 alu_reg_0/reg_bit1_4/sram_4/a_5_n27# alu_reg_0/reg_bit1_4/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1105 gnd alu_reg_0/reg_bit1_4/sram_4/a_5_n27# alu_reg_0/reg_bit1_4/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1106 alu_reg_0/reg_bit1_4/sram_4/a_5_n27# alu_reg_0/reg_bit1_4/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1107 alu_reg_0/reg_bit1_4/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1108 alu_reg_0/reg_bit1_4/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1109 alu_reg_0/reg_bit1_4/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1110 alu_reg_0/reg_bit1_4/Bl_ ALU_Pc alu_reg_0/reg_bit1_4/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 vdd ALU_Pc alu_reg_0/reg_bit1_4/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1112 vdd alu_reg_0/reg_bit1_3/A_ O3 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1113 alu_reg_0/reg_bit1_3/A_ O3 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1114 alu_reg_0/reg_bit1_3/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_3/A_ O3 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1115 alu_reg_0/reg_bit1_3/A_ O3 alu_reg_0/reg_bit1_3/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1116 alu_reg_0/reg_bit1_3/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1117 O3 ALU_As alu_reg_0/reg_bit1_3/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1118 alu_reg_0/reg_bit1_3/Bl_ ALU_As alu_reg_0/reg_bit1_3/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1119 alu_reg_0/reg_bit1_3/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_3/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1120 alu_reg_0/reg_bit1_3/Bl alu_reg_0/reg_bit1_3/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_3/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 alu_reg_0/reg_bit1_3/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_3/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_3/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1122 vdd S3 alu_reg_0/reg_bit1_3/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1123 alu_reg_0/reg_bit1_3/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_3/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1124 alu_reg_0/reg_bit1_3/Bl ALU_Ds alu_reg_0/reg_bit1_3/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1125 alu_reg_0/reg_bit1_3/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_3/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1126 gnd S3 alu_reg_0/reg_bit1_3/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1127 alu_reg_0/reg_bit1_3/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1128 gnd S3 alu_reg_0/reg_bit1_3/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1129 alu_reg_0/reg_bit1_3/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1130 vdd S3 alu_reg_0/reg_bit1_3/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1131 vdd alu_reg_0/reg_bit1_3/sram_4/a_5_n27# alu_reg_0/reg_bit1_3/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1132 alu_reg_0/reg_bit1_3/sram_4/a_5_n27# alu_reg_0/reg_bit1_3/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1133 gnd alu_reg_0/reg_bit1_3/sram_4/a_5_n27# alu_reg_0/reg_bit1_3/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1134 alu_reg_0/reg_bit1_3/sram_4/a_5_n27# alu_reg_0/reg_bit1_3/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1135 alu_reg_0/reg_bit1_3/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 alu_reg_0/reg_bit1_3/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1137 alu_reg_0/reg_bit1_3/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1138 alu_reg_0/reg_bit1_3/Bl_ ALU_Pc alu_reg_0/reg_bit1_3/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1139 vdd ALU_Pc alu_reg_0/reg_bit1_3/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1140 vdd alu_reg_0/reg_bit1_2/A_ O2 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1141 alu_reg_0/reg_bit1_2/A_ O2 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1142 alu_reg_0/reg_bit1_2/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_2/A_ O2 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1143 alu_reg_0/reg_bit1_2/A_ O2 alu_reg_0/reg_bit1_2/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1144 alu_reg_0/reg_bit1_2/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1145 O2 ALU_As alu_reg_0/reg_bit1_2/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1146 alu_reg_0/reg_bit1_2/Bl_ ALU_As alu_reg_0/reg_bit1_2/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1147 alu_reg_0/reg_bit1_2/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_2/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1148 alu_reg_0/reg_bit1_2/Bl alu_reg_0/reg_bit1_2/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_2/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1149 alu_reg_0/reg_bit1_2/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_2/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_2/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1150 vdd S2 alu_reg_0/reg_bit1_2/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1151 alu_reg_0/reg_bit1_2/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_2/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1152 alu_reg_0/reg_bit1_2/Bl ALU_Ds alu_reg_0/reg_bit1_2/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1153 alu_reg_0/reg_bit1_2/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_2/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1154 gnd S2 alu_reg_0/reg_bit1_2/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1155 alu_reg_0/reg_bit1_2/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1156 gnd S2 alu_reg_0/reg_bit1_2/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1157 alu_reg_0/reg_bit1_2/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1158 vdd S2 alu_reg_0/reg_bit1_2/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1159 vdd alu_reg_0/reg_bit1_2/sram_4/a_5_n27# alu_reg_0/reg_bit1_2/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1160 alu_reg_0/reg_bit1_2/sram_4/a_5_n27# alu_reg_0/reg_bit1_2/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1161 gnd alu_reg_0/reg_bit1_2/sram_4/a_5_n27# alu_reg_0/reg_bit1_2/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1162 alu_reg_0/reg_bit1_2/sram_4/a_5_n27# alu_reg_0/reg_bit1_2/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1163 alu_reg_0/reg_bit1_2/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1164 alu_reg_0/reg_bit1_2/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1165 alu_reg_0/reg_bit1_2/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1166 alu_reg_0/reg_bit1_2/Bl_ ALU_Pc alu_reg_0/reg_bit1_2/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1167 vdd ALU_Pc alu_reg_0/reg_bit1_2/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1168 vdd alu_reg_0/reg_bit1_1/A_ O1 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1169 alu_reg_0/reg_bit1_1/A_ O1 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1170 alu_reg_0/reg_bit1_1/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_1/A_ O1 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1171 alu_reg_0/reg_bit1_1/A_ O1 alu_reg_0/reg_bit1_1/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1172 alu_reg_0/reg_bit1_1/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1173 O1 ALU_As alu_reg_0/reg_bit1_1/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1174 alu_reg_0/reg_bit1_1/Bl_ ALU_As alu_reg_0/reg_bit1_1/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1175 alu_reg_0/reg_bit1_1/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_1/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1176 alu_reg_0/reg_bit1_1/Bl alu_reg_0/reg_bit1_1/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_1/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1177 alu_reg_0/reg_bit1_1/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_1/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_1/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1178 vdd S1 alu_reg_0/reg_bit1_1/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1179 alu_reg_0/reg_bit1_1/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_1/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1180 alu_reg_0/reg_bit1_1/Bl ALU_Ds alu_reg_0/reg_bit1_1/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1181 alu_reg_0/reg_bit1_1/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_1/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1182 gnd S1 alu_reg_0/reg_bit1_1/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1183 alu_reg_0/reg_bit1_1/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1184 gnd S1 alu_reg_0/reg_bit1_1/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1185 alu_reg_0/reg_bit1_1/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1186 vdd S1 alu_reg_0/reg_bit1_1/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1187 vdd alu_reg_0/reg_bit1_1/sram_4/a_5_n27# alu_reg_0/reg_bit1_1/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1188 alu_reg_0/reg_bit1_1/sram_4/a_5_n27# alu_reg_0/reg_bit1_1/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1189 gnd alu_reg_0/reg_bit1_1/sram_4/a_5_n27# alu_reg_0/reg_bit1_1/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1190 alu_reg_0/reg_bit1_1/sram_4/a_5_n27# alu_reg_0/reg_bit1_1/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1191 alu_reg_0/reg_bit1_1/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1192 alu_reg_0/reg_bit1_1/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1193 alu_reg_0/reg_bit1_1/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1194 alu_reg_0/reg_bit1_1/Bl_ ALU_Pc alu_reg_0/reg_bit1_1/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1195 vdd ALU_Pc alu_reg_0/reg_bit1_1/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1196 vdd alu_reg_0/reg_bit1_0/A_ O0 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=200 ps=100
M1197 alu_reg_0/reg_bit1_0/A_ O0 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1198 alu_reg_0/reg_bit1_0/diffamp_0/a_92_n2# alu_reg_0/reg_bit1_0/A_ O0 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=28 ps=22
M1199 alu_reg_0/reg_bit1_0/A_ O0 alu_reg_0/reg_bit1_0/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1200 alu_reg_0/reg_bit1_0/diffamp_0/a_92_n2# ALU_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1201 O0 ALU_As alu_reg_0/reg_bit1_0/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1202 alu_reg_0/reg_bit1_0/Bl_ ALU_As alu_reg_0/reg_bit1_0/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1203 alu_reg_0/reg_bit1_0/write_driver_0/a_7_n4# alu_reg_0/reg_bit1_0/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1204 alu_reg_0/reg_bit1_0/Bl alu_reg_0/reg_bit1_0/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_0/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1205 alu_reg_0/reg_bit1_0/write_driver_0/a_28_n4# alu_reg_0/reg_bit1_0/write_driver_0/a_7_n15# alu_reg_0/reg_bit1_0/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1206 vdd S0 alu_reg_0/reg_bit1_0/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1207 alu_reg_0/reg_bit1_0/write_driver_0/a_7_n30# alu_reg_0/reg_bit1_0/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1208 alu_reg_0/reg_bit1_0/Bl ALU_Ds alu_reg_0/reg_bit1_0/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=70 pd=48 as=0 ps=0
M1209 alu_reg_0/reg_bit1_0/write_driver_0/a_28_n30# ALU_Ds alu_reg_0/reg_bit1_0/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=70 ps=48
M1210 gnd S0 alu_reg_0/reg_bit1_0/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1211 alu_reg_0/reg_bit1_0/write_driver_0/a_7_n15# ALU_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1212 gnd S0 alu_reg_0/reg_bit1_0/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1213 alu_reg_0/reg_bit1_0/write_driver_0/a_7_n15# ALU_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1214 vdd S0 alu_reg_0/reg_bit1_0/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1215 vdd alu_reg_0/reg_bit1_0/sram_4/a_5_n27# alu_reg_0/reg_bit1_0/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1216 alu_reg_0/reg_bit1_0/sram_4/a_5_n27# alu_reg_0/reg_bit1_0/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1217 gnd alu_reg_0/reg_bit1_0/sram_4/a_5_n27# alu_reg_0/reg_bit1_0/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1218 alu_reg_0/reg_bit1_0/sram_4/a_5_n27# alu_reg_0/reg_bit1_0/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1219 alu_reg_0/reg_bit1_0/sram_4/a_n2_n30# vdd alu_reg_0/reg_bit1_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1220 alu_reg_0/reg_bit1_0/sram_4/a_5_n27# vdd alu_reg_0/reg_bit1_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1221 alu_reg_0/reg_bit1_0/Bl ALU_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1222 alu_reg_0/reg_bit1_0/Bl_ ALU_Pc alu_reg_0/reg_bit1_0/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1223 vdd ALU_Pc alu_reg_0/reg_bit1_0/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1224 vdd alu_0/fa_sub_7/fa_0/a_n14_38# alu_0/fa_sub_6/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1225 alu_0/fa_sub_7/fa_0/a_n2_72# I0 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1226 alu_0/fa_sub_7/fa_0/a_n14_38# alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1227 alu_0/fa_sub_7/fa_0/a_11_72# Subtract alu_0/fa_sub_7/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1228 vdd I0 alu_0/fa_sub_7/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1229 alu_0/fa_sub_7/fa_0/a_11_72# alu_0/fa_sub_7/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1230 alu_0/fa_sub_7/fa_0/a_43_72# I0 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1231 vdd alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1232 alu_0/fa_sub_7/fa_0/a_43_72# Subtract vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1233 alu_0/fa_sub_7/fa_0/a_67_19# alu_0/fa_sub_7/fa_0/a_n14_38# alu_0/fa_sub_7/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1234 alu_0/fa_sub_7/fa_0/a_81_72# Subtract alu_0/fa_sub_7/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1235 alu_0/fa_sub_7/fa_0/a_86_72# alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1236 vdd I0 alu_0/fa_sub_7/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1237 S0 alu_0/fa_sub_7/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1238 gnd alu_0/fa_sub_7/fa_0/a_n14_38# alu_0/fa_sub_6/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1239 alu_0/fa_sub_7/fa_0/a_n2_19# I0 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1240 alu_0/fa_sub_7/fa_0/a_n14_38# alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1241 alu_0/fa_sub_7/fa_0/a_11_19# Subtract alu_0/fa_sub_7/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1242 gnd I0 alu_0/fa_sub_7/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1243 alu_0/fa_sub_7/fa_0/a_11_19# alu_0/fa_sub_7/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1244 alu_0/fa_sub_7/fa_0/a_43_19# I0 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1245 gnd alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1246 alu_0/fa_sub_7/fa_0/a_43_19# Subtract gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1247 alu_0/fa_sub_7/fa_0/a_67_19# alu_0/fa_sub_7/fa_0/a_n14_38# alu_0/fa_sub_7/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1248 alu_0/fa_sub_7/fa_0/a_81_19# Subtract alu_0/fa_sub_7/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1249 alu_0/fa_sub_7/fa_0/a_86_19# alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1250 gnd I0 alu_0/fa_sub_7/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1251 S0 alu_0/fa_sub_7/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1252 vdd alu_0/fa_sub_7/xor2_0/A alu_0/fa_sub_7/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1253 alu_0/fa_sub_7/xor2_0/a_33_54# alu_0/fa_sub_7/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1254 alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/xor2_0/A alu_0/fa_sub_7/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1255 alu_0/fa_sub_7/xor2_0/a_50_54# alu_0/fa_sub_7/xor2_0/a_17_6# alu_0/fa_sub_7/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1256 vdd Subtract alu_0/fa_sub_7/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1257 alu_0/fa_sub_7/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1258 gnd alu_0/fa_sub_7/xor2_0/A alu_0/fa_sub_7/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1259 alu_0/fa_sub_7/xor2_0/a_33_6# alu_0/fa_sub_7/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1260 alu_0/fa_sub_7/fa_0/B alu_0/fa_sub_7/xor2_0/a_17_6# alu_0/fa_sub_7/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1261 alu_0/fa_sub_7/xor2_0/a_50_6# alu_0/fa_sub_7/xor2_0/A alu_0/fa_sub_7/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1262 gnd Subtract alu_0/fa_sub_7/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1263 alu_0/fa_sub_7/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1264 alu_0/fa_sub_7/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=27872 ps=13704
M1265 Ad0 alu_0/fa_sub_7/mux21_0/a_n3_n57# alu_0/fa_sub_7/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1266 vdd Select alu_0/fa_sub_7/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1267 alu_0/fa_sub_7/xor2_0/A alu_0/fa_sub_7/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1268 Ad0 Select alu_0/fa_sub_7/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1269 gnd Select alu_0/fa_sub_7/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1270 vdd alu_0/fa_sub_6/fa_0/a_n14_38# alu_0/fa_sub_5/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1271 alu_0/fa_sub_6/fa_0/a_n2_72# I1 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1272 alu_0/fa_sub_6/fa_0/a_n14_38# alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1273 alu_0/fa_sub_6/fa_0/a_11_72# alu_0/fa_sub_6/fa_0/Ci alu_0/fa_sub_6/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1274 vdd I1 alu_0/fa_sub_6/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1275 alu_0/fa_sub_6/fa_0/a_11_72# alu_0/fa_sub_6/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1276 alu_0/fa_sub_6/fa_0/a_43_72# I1 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1277 vdd alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1278 alu_0/fa_sub_6/fa_0/a_43_72# alu_0/fa_sub_6/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1279 alu_0/fa_sub_6/fa_0/a_67_19# alu_0/fa_sub_6/fa_0/a_n14_38# alu_0/fa_sub_6/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1280 alu_0/fa_sub_6/fa_0/a_81_72# alu_0/fa_sub_6/fa_0/Ci alu_0/fa_sub_6/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1281 alu_0/fa_sub_6/fa_0/a_86_72# alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1282 vdd I1 alu_0/fa_sub_6/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1283 S1 alu_0/fa_sub_6/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1284 gnd alu_0/fa_sub_6/fa_0/a_n14_38# alu_0/fa_sub_5/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1285 alu_0/fa_sub_6/fa_0/a_n2_19# I1 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1286 alu_0/fa_sub_6/fa_0/a_n14_38# alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1287 alu_0/fa_sub_6/fa_0/a_11_19# alu_0/fa_sub_6/fa_0/Ci alu_0/fa_sub_6/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1288 gnd I1 alu_0/fa_sub_6/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1289 alu_0/fa_sub_6/fa_0/a_11_19# alu_0/fa_sub_6/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1290 alu_0/fa_sub_6/fa_0/a_43_19# I1 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1291 gnd alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1292 alu_0/fa_sub_6/fa_0/a_43_19# alu_0/fa_sub_6/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1293 alu_0/fa_sub_6/fa_0/a_67_19# alu_0/fa_sub_6/fa_0/a_n14_38# alu_0/fa_sub_6/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1294 alu_0/fa_sub_6/fa_0/a_81_19# alu_0/fa_sub_6/fa_0/Ci alu_0/fa_sub_6/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1295 alu_0/fa_sub_6/fa_0/a_86_19# alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1296 gnd I1 alu_0/fa_sub_6/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1297 S1 alu_0/fa_sub_6/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1298 vdd alu_0/fa_sub_6/xor2_0/A alu_0/fa_sub_6/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1299 alu_0/fa_sub_6/xor2_0/a_33_54# alu_0/fa_sub_6/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1300 alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/xor2_0/A alu_0/fa_sub_6/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1301 alu_0/fa_sub_6/xor2_0/a_50_54# alu_0/fa_sub_6/xor2_0/a_17_6# alu_0/fa_sub_6/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1302 vdd Subtract alu_0/fa_sub_6/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1303 alu_0/fa_sub_6/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1304 gnd alu_0/fa_sub_6/xor2_0/A alu_0/fa_sub_6/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1305 alu_0/fa_sub_6/xor2_0/a_33_6# alu_0/fa_sub_6/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1306 alu_0/fa_sub_6/fa_0/B alu_0/fa_sub_6/xor2_0/a_17_6# alu_0/fa_sub_6/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1307 alu_0/fa_sub_6/xor2_0/a_50_6# alu_0/fa_sub_6/xor2_0/A alu_0/fa_sub_6/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1308 gnd Subtract alu_0/fa_sub_6/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1309 alu_0/fa_sub_6/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1310 alu_0/fa_sub_6/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1311 Ad1 alu_0/fa_sub_6/mux21_0/a_n3_n57# alu_0/fa_sub_6/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1312 vdd Select alu_0/fa_sub_6/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1313 alu_0/fa_sub_6/xor2_0/A alu_0/fa_sub_6/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1314 Ad1 Select alu_0/fa_sub_6/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1315 gnd Select alu_0/fa_sub_6/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1316 vdd alu_0/fa_sub_5/fa_0/a_n14_38# alu_0/fa_sub_4/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1317 alu_0/fa_sub_5/fa_0/a_n2_72# I2 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1318 alu_0/fa_sub_5/fa_0/a_n14_38# alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1319 alu_0/fa_sub_5/fa_0/a_11_72# alu_0/fa_sub_5/fa_0/Ci alu_0/fa_sub_5/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1320 vdd I2 alu_0/fa_sub_5/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1321 alu_0/fa_sub_5/fa_0/a_11_72# alu_0/fa_sub_5/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1322 alu_0/fa_sub_5/fa_0/a_43_72# I2 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1323 vdd alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1324 alu_0/fa_sub_5/fa_0/a_43_72# alu_0/fa_sub_5/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1325 alu_0/fa_sub_5/fa_0/a_67_19# alu_0/fa_sub_5/fa_0/a_n14_38# alu_0/fa_sub_5/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1326 alu_0/fa_sub_5/fa_0/a_81_72# alu_0/fa_sub_5/fa_0/Ci alu_0/fa_sub_5/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1327 alu_0/fa_sub_5/fa_0/a_86_72# alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1328 vdd I2 alu_0/fa_sub_5/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1329 S2 alu_0/fa_sub_5/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1330 gnd alu_0/fa_sub_5/fa_0/a_n14_38# alu_0/fa_sub_4/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1331 alu_0/fa_sub_5/fa_0/a_n2_19# I2 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1332 alu_0/fa_sub_5/fa_0/a_n14_38# alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1333 alu_0/fa_sub_5/fa_0/a_11_19# alu_0/fa_sub_5/fa_0/Ci alu_0/fa_sub_5/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1334 gnd I2 alu_0/fa_sub_5/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1335 alu_0/fa_sub_5/fa_0/a_11_19# alu_0/fa_sub_5/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1336 alu_0/fa_sub_5/fa_0/a_43_19# I2 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1337 gnd alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1338 alu_0/fa_sub_5/fa_0/a_43_19# alu_0/fa_sub_5/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1339 alu_0/fa_sub_5/fa_0/a_67_19# alu_0/fa_sub_5/fa_0/a_n14_38# alu_0/fa_sub_5/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1340 alu_0/fa_sub_5/fa_0/a_81_19# alu_0/fa_sub_5/fa_0/Ci alu_0/fa_sub_5/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1341 alu_0/fa_sub_5/fa_0/a_86_19# alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1342 gnd I2 alu_0/fa_sub_5/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1343 S2 alu_0/fa_sub_5/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1344 vdd alu_0/fa_sub_5/xor2_0/A alu_0/fa_sub_5/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1345 alu_0/fa_sub_5/xor2_0/a_33_54# alu_0/fa_sub_5/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1346 alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/xor2_0/A alu_0/fa_sub_5/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1347 alu_0/fa_sub_5/xor2_0/a_50_54# alu_0/fa_sub_5/xor2_0/a_17_6# alu_0/fa_sub_5/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1348 vdd Subtract alu_0/fa_sub_5/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1349 alu_0/fa_sub_5/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1350 gnd alu_0/fa_sub_5/xor2_0/A alu_0/fa_sub_5/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1351 alu_0/fa_sub_5/xor2_0/a_33_6# alu_0/fa_sub_5/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1352 alu_0/fa_sub_5/fa_0/B alu_0/fa_sub_5/xor2_0/a_17_6# alu_0/fa_sub_5/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1353 alu_0/fa_sub_5/xor2_0/a_50_6# alu_0/fa_sub_5/xor2_0/A alu_0/fa_sub_5/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1354 gnd Subtract alu_0/fa_sub_5/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1355 alu_0/fa_sub_5/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1356 alu_0/fa_sub_5/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1357 Ad2 alu_0/fa_sub_5/mux21_0/a_n3_n57# alu_0/fa_sub_5/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1358 vdd Select alu_0/fa_sub_5/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1359 alu_0/fa_sub_5/xor2_0/A alu_0/fa_sub_5/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1360 Ad2 Select alu_0/fa_sub_5/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1361 gnd Select alu_0/fa_sub_5/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1362 vdd alu_0/fa_sub_4/fa_0/a_n14_38# alu_0/fa_sub_3/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1363 alu_0/fa_sub_4/fa_0/a_n2_72# I3 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1364 alu_0/fa_sub_4/fa_0/a_n14_38# alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1365 alu_0/fa_sub_4/fa_0/a_11_72# alu_0/fa_sub_4/fa_0/Ci alu_0/fa_sub_4/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1366 vdd I3 alu_0/fa_sub_4/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1367 alu_0/fa_sub_4/fa_0/a_11_72# alu_0/fa_sub_4/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1368 alu_0/fa_sub_4/fa_0/a_43_72# I3 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1369 vdd alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1370 alu_0/fa_sub_4/fa_0/a_43_72# alu_0/fa_sub_4/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1371 alu_0/fa_sub_4/fa_0/a_67_19# alu_0/fa_sub_4/fa_0/a_n14_38# alu_0/fa_sub_4/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1372 alu_0/fa_sub_4/fa_0/a_81_72# alu_0/fa_sub_4/fa_0/Ci alu_0/fa_sub_4/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1373 alu_0/fa_sub_4/fa_0/a_86_72# alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1374 vdd I3 alu_0/fa_sub_4/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1375 S3 alu_0/fa_sub_4/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1376 gnd alu_0/fa_sub_4/fa_0/a_n14_38# alu_0/fa_sub_3/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1377 alu_0/fa_sub_4/fa_0/a_n2_19# I3 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1378 alu_0/fa_sub_4/fa_0/a_n14_38# alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1379 alu_0/fa_sub_4/fa_0/a_11_19# alu_0/fa_sub_4/fa_0/Ci alu_0/fa_sub_4/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1380 gnd I3 alu_0/fa_sub_4/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1381 alu_0/fa_sub_4/fa_0/a_11_19# alu_0/fa_sub_4/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1382 alu_0/fa_sub_4/fa_0/a_43_19# I3 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1383 gnd alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1384 alu_0/fa_sub_4/fa_0/a_43_19# alu_0/fa_sub_4/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1385 alu_0/fa_sub_4/fa_0/a_67_19# alu_0/fa_sub_4/fa_0/a_n14_38# alu_0/fa_sub_4/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1386 alu_0/fa_sub_4/fa_0/a_81_19# alu_0/fa_sub_4/fa_0/Ci alu_0/fa_sub_4/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1387 alu_0/fa_sub_4/fa_0/a_86_19# alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1388 gnd I3 alu_0/fa_sub_4/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1389 S3 alu_0/fa_sub_4/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1390 vdd alu_0/fa_sub_4/xor2_0/A alu_0/fa_sub_4/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1391 alu_0/fa_sub_4/xor2_0/a_33_54# alu_0/fa_sub_4/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1392 alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/xor2_0/A alu_0/fa_sub_4/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1393 alu_0/fa_sub_4/xor2_0/a_50_54# alu_0/fa_sub_4/xor2_0/a_17_6# alu_0/fa_sub_4/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1394 vdd Subtract alu_0/fa_sub_4/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1395 alu_0/fa_sub_4/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1396 gnd alu_0/fa_sub_4/xor2_0/A alu_0/fa_sub_4/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1397 alu_0/fa_sub_4/xor2_0/a_33_6# alu_0/fa_sub_4/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1398 alu_0/fa_sub_4/fa_0/B alu_0/fa_sub_4/xor2_0/a_17_6# alu_0/fa_sub_4/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1399 alu_0/fa_sub_4/xor2_0/a_50_6# alu_0/fa_sub_4/xor2_0/A alu_0/fa_sub_4/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1400 gnd Subtract alu_0/fa_sub_4/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1401 alu_0/fa_sub_4/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1402 alu_0/fa_sub_4/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1403 Ad3 alu_0/fa_sub_4/mux21_0/a_n3_n57# alu_0/fa_sub_4/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1404 vdd Select alu_0/fa_sub_4/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1405 alu_0/fa_sub_4/xor2_0/A alu_0/fa_sub_4/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1406 Ad3 Select alu_0/fa_sub_4/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1407 gnd Select alu_0/fa_sub_4/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1408 vdd alu_0/fa_sub_3/fa_0/a_n14_38# alu_0/fa_sub_2/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1409 alu_0/fa_sub_3/fa_0/a_n2_72# I4 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1410 alu_0/fa_sub_3/fa_0/a_n14_38# alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1411 alu_0/fa_sub_3/fa_0/a_11_72# alu_0/fa_sub_3/fa_0/Ci alu_0/fa_sub_3/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1412 vdd I4 alu_0/fa_sub_3/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1413 alu_0/fa_sub_3/fa_0/a_11_72# alu_0/fa_sub_3/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1414 alu_0/fa_sub_3/fa_0/a_43_72# I4 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1415 vdd alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1416 alu_0/fa_sub_3/fa_0/a_43_72# alu_0/fa_sub_3/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1417 alu_0/fa_sub_3/fa_0/a_67_19# alu_0/fa_sub_3/fa_0/a_n14_38# alu_0/fa_sub_3/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1418 alu_0/fa_sub_3/fa_0/a_81_72# alu_0/fa_sub_3/fa_0/Ci alu_0/fa_sub_3/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1419 alu_0/fa_sub_3/fa_0/a_86_72# alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1420 vdd I4 alu_0/fa_sub_3/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1421 S4 alu_0/fa_sub_3/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1422 gnd alu_0/fa_sub_3/fa_0/a_n14_38# alu_0/fa_sub_2/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1423 alu_0/fa_sub_3/fa_0/a_n2_19# I4 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1424 alu_0/fa_sub_3/fa_0/a_n14_38# alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1425 alu_0/fa_sub_3/fa_0/a_11_19# alu_0/fa_sub_3/fa_0/Ci alu_0/fa_sub_3/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1426 gnd I4 alu_0/fa_sub_3/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1427 alu_0/fa_sub_3/fa_0/a_11_19# alu_0/fa_sub_3/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1428 alu_0/fa_sub_3/fa_0/a_43_19# I4 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1429 gnd alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1430 alu_0/fa_sub_3/fa_0/a_43_19# alu_0/fa_sub_3/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1431 alu_0/fa_sub_3/fa_0/a_67_19# alu_0/fa_sub_3/fa_0/a_n14_38# alu_0/fa_sub_3/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1432 alu_0/fa_sub_3/fa_0/a_81_19# alu_0/fa_sub_3/fa_0/Ci alu_0/fa_sub_3/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1433 alu_0/fa_sub_3/fa_0/a_86_19# alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1434 gnd I4 alu_0/fa_sub_3/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1435 S4 alu_0/fa_sub_3/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1436 vdd alu_0/fa_sub_3/xor2_0/A alu_0/fa_sub_3/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1437 alu_0/fa_sub_3/xor2_0/a_33_54# alu_0/fa_sub_3/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1438 alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/xor2_0/A alu_0/fa_sub_3/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1439 alu_0/fa_sub_3/xor2_0/a_50_54# alu_0/fa_sub_3/xor2_0/a_17_6# alu_0/fa_sub_3/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1440 vdd Subtract alu_0/fa_sub_3/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1441 alu_0/fa_sub_3/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1442 gnd alu_0/fa_sub_3/xor2_0/A alu_0/fa_sub_3/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1443 alu_0/fa_sub_3/xor2_0/a_33_6# alu_0/fa_sub_3/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1444 alu_0/fa_sub_3/fa_0/B alu_0/fa_sub_3/xor2_0/a_17_6# alu_0/fa_sub_3/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1445 alu_0/fa_sub_3/xor2_0/a_50_6# alu_0/fa_sub_3/xor2_0/A alu_0/fa_sub_3/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1446 gnd Subtract alu_0/fa_sub_3/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1447 alu_0/fa_sub_3/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1448 alu_0/fa_sub_3/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1449 Ad4 alu_0/fa_sub_3/mux21_0/a_n3_n57# alu_0/fa_sub_3/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1450 vdd Select alu_0/fa_sub_3/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1451 alu_0/fa_sub_3/xor2_0/A alu_0/fa_sub_3/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1452 Ad4 Select alu_0/fa_sub_3/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1453 gnd Select alu_0/fa_sub_3/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1454 vdd alu_0/fa_sub_2/fa_0/a_n14_38# alu_0/fa_sub_1/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1455 alu_0/fa_sub_2/fa_0/a_n2_72# I5 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1456 alu_0/fa_sub_2/fa_0/a_n14_38# alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1457 alu_0/fa_sub_2/fa_0/a_11_72# alu_0/fa_sub_2/fa_0/Ci alu_0/fa_sub_2/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1458 vdd I5 alu_0/fa_sub_2/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1459 alu_0/fa_sub_2/fa_0/a_11_72# alu_0/fa_sub_2/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1460 alu_0/fa_sub_2/fa_0/a_43_72# I5 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1461 vdd alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1462 alu_0/fa_sub_2/fa_0/a_43_72# alu_0/fa_sub_2/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1463 alu_0/fa_sub_2/fa_0/a_67_19# alu_0/fa_sub_2/fa_0/a_n14_38# alu_0/fa_sub_2/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1464 alu_0/fa_sub_2/fa_0/a_81_72# alu_0/fa_sub_2/fa_0/Ci alu_0/fa_sub_2/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1465 alu_0/fa_sub_2/fa_0/a_86_72# alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1466 vdd I5 alu_0/fa_sub_2/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1467 S5 alu_0/fa_sub_2/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1468 gnd alu_0/fa_sub_2/fa_0/a_n14_38# alu_0/fa_sub_1/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1469 alu_0/fa_sub_2/fa_0/a_n2_19# I5 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1470 alu_0/fa_sub_2/fa_0/a_n14_38# alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1471 alu_0/fa_sub_2/fa_0/a_11_19# alu_0/fa_sub_2/fa_0/Ci alu_0/fa_sub_2/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1472 gnd I5 alu_0/fa_sub_2/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1473 alu_0/fa_sub_2/fa_0/a_11_19# alu_0/fa_sub_2/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1474 alu_0/fa_sub_2/fa_0/a_43_19# I5 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1475 gnd alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1476 alu_0/fa_sub_2/fa_0/a_43_19# alu_0/fa_sub_2/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1477 alu_0/fa_sub_2/fa_0/a_67_19# alu_0/fa_sub_2/fa_0/a_n14_38# alu_0/fa_sub_2/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1478 alu_0/fa_sub_2/fa_0/a_81_19# alu_0/fa_sub_2/fa_0/Ci alu_0/fa_sub_2/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1479 alu_0/fa_sub_2/fa_0/a_86_19# alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1480 gnd I5 alu_0/fa_sub_2/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1481 S5 alu_0/fa_sub_2/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1482 vdd alu_0/fa_sub_2/xor2_0/A alu_0/fa_sub_2/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1483 alu_0/fa_sub_2/xor2_0/a_33_54# alu_0/fa_sub_2/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1484 alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/xor2_0/A alu_0/fa_sub_2/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1485 alu_0/fa_sub_2/xor2_0/a_50_54# alu_0/fa_sub_2/xor2_0/a_17_6# alu_0/fa_sub_2/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1486 vdd Subtract alu_0/fa_sub_2/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1487 alu_0/fa_sub_2/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1488 gnd alu_0/fa_sub_2/xor2_0/A alu_0/fa_sub_2/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1489 alu_0/fa_sub_2/xor2_0/a_33_6# alu_0/fa_sub_2/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1490 alu_0/fa_sub_2/fa_0/B alu_0/fa_sub_2/xor2_0/a_17_6# alu_0/fa_sub_2/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1491 alu_0/fa_sub_2/xor2_0/a_50_6# alu_0/fa_sub_2/xor2_0/A alu_0/fa_sub_2/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1492 gnd Subtract alu_0/fa_sub_2/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1493 alu_0/fa_sub_2/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1494 alu_0/fa_sub_2/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1495 Ad5 alu_0/fa_sub_2/mux21_0/a_n3_n57# alu_0/fa_sub_2/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1496 vdd Select alu_0/fa_sub_2/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1497 alu_0/fa_sub_2/xor2_0/A alu_0/fa_sub_2/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1498 Ad5 Select alu_0/fa_sub_2/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1499 gnd Select alu_0/fa_sub_2/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1500 vdd alu_0/fa_sub_1/fa_0/a_n14_38# alu_0/fa_sub_0/fa_0/Ci Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1501 alu_0/fa_sub_1/fa_0/a_n2_72# I6 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1502 alu_0/fa_sub_1/fa_0/a_n14_38# alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1503 alu_0/fa_sub_1/fa_0/a_11_72# alu_0/fa_sub_1/fa_0/Ci alu_0/fa_sub_1/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1504 vdd I6 alu_0/fa_sub_1/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1505 alu_0/fa_sub_1/fa_0/a_11_72# alu_0/fa_sub_1/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1506 alu_0/fa_sub_1/fa_0/a_43_72# I6 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1507 vdd alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1508 alu_0/fa_sub_1/fa_0/a_43_72# alu_0/fa_sub_1/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1509 alu_0/fa_sub_1/fa_0/a_67_19# alu_0/fa_sub_1/fa_0/a_n14_38# alu_0/fa_sub_1/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1510 alu_0/fa_sub_1/fa_0/a_81_72# alu_0/fa_sub_1/fa_0/Ci alu_0/fa_sub_1/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1511 alu_0/fa_sub_1/fa_0/a_86_72# alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1512 vdd I6 alu_0/fa_sub_1/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1513 S6 alu_0/fa_sub_1/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1514 gnd alu_0/fa_sub_1/fa_0/a_n14_38# alu_0/fa_sub_0/fa_0/Ci Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1515 alu_0/fa_sub_1/fa_0/a_n2_19# I6 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1516 alu_0/fa_sub_1/fa_0/a_n14_38# alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1517 alu_0/fa_sub_1/fa_0/a_11_19# alu_0/fa_sub_1/fa_0/Ci alu_0/fa_sub_1/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1518 gnd I6 alu_0/fa_sub_1/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1519 alu_0/fa_sub_1/fa_0/a_11_19# alu_0/fa_sub_1/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1520 alu_0/fa_sub_1/fa_0/a_43_19# I6 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1521 gnd alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1522 alu_0/fa_sub_1/fa_0/a_43_19# alu_0/fa_sub_1/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1523 alu_0/fa_sub_1/fa_0/a_67_19# alu_0/fa_sub_1/fa_0/a_n14_38# alu_0/fa_sub_1/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1524 alu_0/fa_sub_1/fa_0/a_81_19# alu_0/fa_sub_1/fa_0/Ci alu_0/fa_sub_1/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1525 alu_0/fa_sub_1/fa_0/a_86_19# alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1526 gnd I6 alu_0/fa_sub_1/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1527 S6 alu_0/fa_sub_1/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1528 vdd alu_0/fa_sub_1/xor2_0/A alu_0/fa_sub_1/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1529 alu_0/fa_sub_1/xor2_0/a_33_54# alu_0/fa_sub_1/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1530 alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/xor2_0/A alu_0/fa_sub_1/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1531 alu_0/fa_sub_1/xor2_0/a_50_54# alu_0/fa_sub_1/xor2_0/a_17_6# alu_0/fa_sub_1/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1532 vdd Subtract alu_0/fa_sub_1/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1533 alu_0/fa_sub_1/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1534 gnd alu_0/fa_sub_1/xor2_0/A alu_0/fa_sub_1/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1535 alu_0/fa_sub_1/xor2_0/a_33_6# alu_0/fa_sub_1/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1536 alu_0/fa_sub_1/fa_0/B alu_0/fa_sub_1/xor2_0/a_17_6# alu_0/fa_sub_1/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1537 alu_0/fa_sub_1/xor2_0/a_50_6# alu_0/fa_sub_1/xor2_0/A alu_0/fa_sub_1/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1538 gnd Subtract alu_0/fa_sub_1/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1539 alu_0/fa_sub_1/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1540 alu_0/fa_sub_1/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1541 Ad6 alu_0/fa_sub_1/mux21_0/a_n3_n57# alu_0/fa_sub_1/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1542 vdd Select alu_0/fa_sub_1/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1543 alu_0/fa_sub_1/xor2_0/A alu_0/fa_sub_1/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1544 Ad6 Select alu_0/fa_sub_1/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1545 gnd Select alu_0/fa_sub_1/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1546 vdd alu_0/fa_sub_0/fa_0/a_n14_38# S8 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1547 alu_0/fa_sub_0/fa_0/a_n2_72# I7 vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1548 alu_0/fa_sub_0/fa_0/a_n14_38# alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/fa_0/a_n2_72# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1549 alu_0/fa_sub_0/fa_0/a_11_72# alu_0/fa_sub_0/fa_0/Ci alu_0/fa_sub_0/fa_0/a_n14_38# Vdd CMOSPTT w=20 l=2
+  ad=220 pd=102 as=0 ps=0
M1550 vdd I7 alu_0/fa_sub_0/fa_0/a_11_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1551 alu_0/fa_sub_0/fa_0/a_11_72# alu_0/fa_sub_0/fa_0/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1552 alu_0/fa_sub_0/fa_0/a_43_72# I7 vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1553 vdd alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1554 alu_0/fa_sub_0/fa_0/a_43_72# alu_0/fa_sub_0/fa_0/Ci vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1555 alu_0/fa_sub_0/fa_0/a_67_19# alu_0/fa_sub_0/fa_0/a_n14_38# alu_0/fa_sub_0/fa_0/a_43_72# Vdd CMOSPTT w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1556 alu_0/fa_sub_0/fa_0/a_81_72# alu_0/fa_sub_0/fa_0/Ci alu_0/fa_sub_0/fa_0/a_67_19# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1557 alu_0/fa_sub_0/fa_0/a_86_72# alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/fa_0/a_81_72# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1558 vdd I7 alu_0/fa_sub_0/fa_0/a_86_72# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1559 S7 alu_0/fa_sub_0/fa_0/a_67_19# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1560 gnd alu_0/fa_sub_0/fa_0/a_n14_38# S8 Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1561 alu_0/fa_sub_0/fa_0/a_n2_19# I7 gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1562 alu_0/fa_sub_0/fa_0/a_n14_38# alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/fa_0/a_n2_19# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1563 alu_0/fa_sub_0/fa_0/a_11_19# alu_0/fa_sub_0/fa_0/Ci alu_0/fa_sub_0/fa_0/a_n14_38# Gnd CMOSNTT w=10 l=2
+  ad=110 pd=62 as=0 ps=0
M1564 gnd I7 alu_0/fa_sub_0/fa_0/a_11_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1565 alu_0/fa_sub_0/fa_0/a_11_19# alu_0/fa_sub_0/fa_0/B gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1566 alu_0/fa_sub_0/fa_0/a_43_19# I7 gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1567 gnd alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1568 alu_0/fa_sub_0/fa_0/a_43_19# alu_0/fa_sub_0/fa_0/Ci gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1569 alu_0/fa_sub_0/fa_0/a_67_19# alu_0/fa_sub_0/fa_0/a_n14_38# alu_0/fa_sub_0/fa_0/a_43_19# Gnd CMOSNTT w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1570 alu_0/fa_sub_0/fa_0/a_81_19# alu_0/fa_sub_0/fa_0/Ci alu_0/fa_sub_0/fa_0/a_67_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1571 alu_0/fa_sub_0/fa_0/a_86_19# alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/fa_0/a_81_19# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1572 gnd I7 alu_0/fa_sub_0/fa_0/a_86_19# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1573 S7 alu_0/fa_sub_0/fa_0/a_67_19# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1574 vdd alu_0/fa_sub_0/xor2_0/A alu_0/fa_sub_0/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1575 alu_0/fa_sub_0/xor2_0/a_33_54# alu_0/fa_sub_0/xor2_0/a_28_44# vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1576 alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/xor2_0/A alu_0/fa_sub_0/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1577 alu_0/fa_sub_0/xor2_0/a_50_54# alu_0/fa_sub_0/xor2_0/a_17_6# alu_0/fa_sub_0/fa_0/B Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1578 vdd Subtract alu_0/fa_sub_0/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1579 alu_0/fa_sub_0/xor2_0/a_28_44# Subtract vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1580 gnd alu_0/fa_sub_0/xor2_0/A alu_0/fa_sub_0/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1581 alu_0/fa_sub_0/xor2_0/a_33_6# alu_0/fa_sub_0/xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1582 alu_0/fa_sub_0/fa_0/B alu_0/fa_sub_0/xor2_0/a_17_6# alu_0/fa_sub_0/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1583 alu_0/fa_sub_0/xor2_0/a_50_6# alu_0/fa_sub_0/xor2_0/A alu_0/fa_sub_0/fa_0/B Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1584 gnd Subtract alu_0/fa_sub_0/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1585 alu_0/fa_sub_0/xor2_0/a_28_44# Subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1586 alu_0/fa_sub_0/xor2_0/A Select gnd Vdd CMOSPTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1587 Ad7 alu_0/fa_sub_0/mux21_0/a_n3_n57# alu_0/fa_sub_0/xor2_0/A Vdd CMOSPTT w=30 l=2
+  ad=350 pd=170 as=0 ps=0
M1588 vdd Select alu_0/fa_sub_0/mux21_0/a_n3_n57# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1589 alu_0/fa_sub_0/xor2_0/A alu_0/fa_sub_0/mux21_0/a_n3_n57# gnd Gnd CMOSNTT w=30 l=2
+  ad=180 pd=72 as=0 ps=0
M1590 Ad7 Select alu_0/fa_sub_0/xor2_0/A Gnd CMOSNTT w=30 l=2
+  ad=178 pd=92 as=0 ps=0
M1591 gnd Select alu_0/fa_sub_0/mux21_0/a_n3_n57# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1592 vdd rf_dec_0/register_file_0/reg_bit_7/A_ Ad0 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1593 rf_dec_0/register_file_0/reg_bit_7/A_ Ad0 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1594 rf_dec_0/register_file_0/reg_bit_7/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_7/A_ Ad0 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M1595 rf_dec_0/register_file_0/reg_bit_7/A_ Ad0 rf_dec_0/register_file_0/reg_bit_7/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1596 rf_dec_0/register_file_0/reg_bit_7/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1597 Ad0 REG_As rf_dec_0/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1598 rf_dec_0/register_file_0/reg_bit_7/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_7/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1599 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1600 rf_dec_0/Bl rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1601 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_7/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1602 vdd O0 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1603 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1604 rf_dec_0/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M1605 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M1606 gnd O0 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1607 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1608 gnd O0 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1609 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1610 vdd O0 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1611 vdd rf_dec_0/register_file_0/reg_bit_7/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1612 rf_dec_0/register_file_0/reg_bit_7/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1613 gnd rf_dec_0/register_file_0/reg_bit_7/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1614 rf_dec_0/register_file_0/reg_bit_7/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1615 rf_dec_0/register_file_0/reg_bit_7/sram_4/a_n2_n30# En7 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1616 rf_dec_0/register_file_0/reg_bit_7/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1617 vdd rf_dec_0/register_file_0/reg_bit_7/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1618 rf_dec_0/register_file_0/reg_bit_7/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1619 gnd rf_dec_0/register_file_0/reg_bit_7/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1620 rf_dec_0/register_file_0/reg_bit_7/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1621 rf_dec_0/register_file_0/reg_bit_7/sram_0/a_n2_n30# En6 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1622 rf_dec_0/register_file_0/reg_bit_7/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1623 vdd rf_dec_0/register_file_0/reg_bit_7/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1624 rf_dec_0/register_file_0/reg_bit_7/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1625 gnd rf_dec_0/register_file_0/reg_bit_7/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1626 rf_dec_0/register_file_0/reg_bit_7/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1627 rf_dec_0/register_file_0/reg_bit_7/sram_1/a_n2_n30# En5 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1628 rf_dec_0/register_file_0/reg_bit_7/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1629 vdd rf_dec_0/register_file_0/reg_bit_7/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1630 rf_dec_0/register_file_0/reg_bit_7/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1631 gnd rf_dec_0/register_file_0/reg_bit_7/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1632 rf_dec_0/register_file_0/reg_bit_7/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1633 rf_dec_0/register_file_0/reg_bit_7/sram_2/a_n2_n30# En4 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1634 rf_dec_0/register_file_0/reg_bit_7/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1635 vdd rf_dec_0/register_file_0/reg_bit_7/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1636 rf_dec_0/register_file_0/reg_bit_7/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1637 gnd rf_dec_0/register_file_0/reg_bit_7/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1638 rf_dec_0/register_file_0/reg_bit_7/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1639 rf_dec_0/register_file_0/reg_bit_7/sram_3/a_n2_n30# En3 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1640 rf_dec_0/register_file_0/reg_bit_7/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1641 vdd rf_dec_0/register_file_0/reg_bit_7/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1642 rf_dec_0/register_file_0/reg_bit_7/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1643 gnd rf_dec_0/register_file_0/reg_bit_7/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1644 rf_dec_0/register_file_0/reg_bit_7/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1645 rf_dec_0/register_file_0/reg_bit_7/sram_5/a_n2_n30# En2 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1646 rf_dec_0/register_file_0/reg_bit_7/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1647 vdd rf_dec_0/register_file_0/reg_bit_7/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1648 rf_dec_0/register_file_0/reg_bit_7/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1649 gnd rf_dec_0/register_file_0/reg_bit_7/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1650 rf_dec_0/register_file_0/reg_bit_7/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1651 rf_dec_0/register_file_0/reg_bit_7/sram_6/a_n2_n30# En1 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1652 rf_dec_0/register_file_0/reg_bit_7/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1653 vdd rf_dec_0/register_file_0/reg_bit_7/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1654 rf_dec_0/register_file_0/reg_bit_7/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1655 gnd rf_dec_0/register_file_0/reg_bit_7/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1656 rf_dec_0/register_file_0/reg_bit_7/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_7/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1657 rf_dec_0/register_file_0/reg_bit_7/sram_7/a_n2_n30# En0 rf_dec_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1658 rf_dec_0/register_file_0/reg_bit_7/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_7/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1659 rf_dec_0/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1660 rf_dec_0/register_file_0/reg_bit_7/Bl_ REG_Pc rf_dec_0/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1661 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_7/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1662 vdd rf_dec_0/register_file_0/reg_bit_6/A_ Ad1 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1663 rf_dec_0/register_file_0/reg_bit_6/A_ Ad1 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1664 rf_dec_0/register_file_0/reg_bit_6/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_6/A_ Ad1 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M1665 rf_dec_0/register_file_0/reg_bit_6/A_ Ad1 rf_dec_0/register_file_0/reg_bit_6/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1666 rf_dec_0/register_file_0/reg_bit_6/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1667 Ad1 REG_As rf_dec_0/register_file_0/reg_bit_6/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1668 rf_dec_0/register_file_0/reg_bit_6/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_6/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1669 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1670 rf_dec_0/register_file_0/reg_bit_6/Bl rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1671 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_6/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1672 vdd O1 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1673 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1674 rf_dec_0/register_file_0/reg_bit_6/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M1675 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M1676 gnd O1 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1677 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1678 gnd O1 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1679 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1680 vdd O1 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1681 vdd rf_dec_0/register_file_0/reg_bit_6/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1682 rf_dec_0/register_file_0/reg_bit_6/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1683 gnd rf_dec_0/register_file_0/reg_bit_6/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1684 rf_dec_0/register_file_0/reg_bit_6/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1685 rf_dec_0/register_file_0/reg_bit_6/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1686 rf_dec_0/register_file_0/reg_bit_6/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1687 vdd rf_dec_0/register_file_0/reg_bit_6/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1688 rf_dec_0/register_file_0/reg_bit_6/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1689 gnd rf_dec_0/register_file_0/reg_bit_6/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1690 rf_dec_0/register_file_0/reg_bit_6/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1691 rf_dec_0/register_file_0/reg_bit_6/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1692 rf_dec_0/register_file_0/reg_bit_6/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1693 vdd rf_dec_0/register_file_0/reg_bit_6/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1694 rf_dec_0/register_file_0/reg_bit_6/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1695 gnd rf_dec_0/register_file_0/reg_bit_6/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1696 rf_dec_0/register_file_0/reg_bit_6/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1697 rf_dec_0/register_file_0/reg_bit_6/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1698 rf_dec_0/register_file_0/reg_bit_6/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1699 vdd rf_dec_0/register_file_0/reg_bit_6/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1700 rf_dec_0/register_file_0/reg_bit_6/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1701 gnd rf_dec_0/register_file_0/reg_bit_6/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1702 rf_dec_0/register_file_0/reg_bit_6/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1703 rf_dec_0/register_file_0/reg_bit_6/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1704 rf_dec_0/register_file_0/reg_bit_6/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1705 vdd rf_dec_0/register_file_0/reg_bit_6/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1706 rf_dec_0/register_file_0/reg_bit_6/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1707 gnd rf_dec_0/register_file_0/reg_bit_6/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1708 rf_dec_0/register_file_0/reg_bit_6/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1709 rf_dec_0/register_file_0/reg_bit_6/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1710 rf_dec_0/register_file_0/reg_bit_6/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1711 vdd rf_dec_0/register_file_0/reg_bit_6/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1712 rf_dec_0/register_file_0/reg_bit_6/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1713 gnd rf_dec_0/register_file_0/reg_bit_6/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1714 rf_dec_0/register_file_0/reg_bit_6/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1715 rf_dec_0/register_file_0/reg_bit_6/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1716 rf_dec_0/register_file_0/reg_bit_6/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1717 vdd rf_dec_0/register_file_0/reg_bit_6/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1718 rf_dec_0/register_file_0/reg_bit_6/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1719 gnd rf_dec_0/register_file_0/reg_bit_6/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1720 rf_dec_0/register_file_0/reg_bit_6/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1721 rf_dec_0/register_file_0/reg_bit_6/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1722 rf_dec_0/register_file_0/reg_bit_6/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1723 vdd rf_dec_0/register_file_0/reg_bit_6/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1724 rf_dec_0/register_file_0/reg_bit_6/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1725 gnd rf_dec_0/register_file_0/reg_bit_6/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1726 rf_dec_0/register_file_0/reg_bit_6/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_6/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1727 rf_dec_0/register_file_0/reg_bit_6/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_6/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1728 rf_dec_0/register_file_0/reg_bit_6/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_6/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1729 rf_dec_0/register_file_0/reg_bit_6/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1730 rf_dec_0/register_file_0/reg_bit_6/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_6/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1731 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_6/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1732 vdd rf_dec_0/register_file_0/reg_bit_5/A_ Ad2 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1733 rf_dec_0/register_file_0/reg_bit_5/A_ Ad2 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1734 rf_dec_0/register_file_0/reg_bit_5/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_5/A_ Ad2 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M1735 rf_dec_0/register_file_0/reg_bit_5/A_ Ad2 rf_dec_0/register_file_0/reg_bit_5/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1736 rf_dec_0/register_file_0/reg_bit_5/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1737 Ad2 REG_As rf_dec_0/register_file_0/reg_bit_5/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1738 rf_dec_0/register_file_0/reg_bit_5/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_5/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1739 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1740 rf_dec_0/register_file_0/reg_bit_5/Bl rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1741 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_5/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1742 vdd O2 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1743 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1744 rf_dec_0/register_file_0/reg_bit_5/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M1745 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M1746 gnd O2 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1747 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1748 gnd O2 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1749 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1750 vdd O2 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1751 vdd rf_dec_0/register_file_0/reg_bit_5/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1752 rf_dec_0/register_file_0/reg_bit_5/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1753 gnd rf_dec_0/register_file_0/reg_bit_5/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1754 rf_dec_0/register_file_0/reg_bit_5/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1755 rf_dec_0/register_file_0/reg_bit_5/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1756 rf_dec_0/register_file_0/reg_bit_5/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1757 vdd rf_dec_0/register_file_0/reg_bit_5/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1758 rf_dec_0/register_file_0/reg_bit_5/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1759 gnd rf_dec_0/register_file_0/reg_bit_5/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1760 rf_dec_0/register_file_0/reg_bit_5/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1761 rf_dec_0/register_file_0/reg_bit_5/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1762 rf_dec_0/register_file_0/reg_bit_5/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1763 vdd rf_dec_0/register_file_0/reg_bit_5/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1764 rf_dec_0/register_file_0/reg_bit_5/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1765 gnd rf_dec_0/register_file_0/reg_bit_5/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1766 rf_dec_0/register_file_0/reg_bit_5/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1767 rf_dec_0/register_file_0/reg_bit_5/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1768 rf_dec_0/register_file_0/reg_bit_5/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1769 vdd rf_dec_0/register_file_0/reg_bit_5/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1770 rf_dec_0/register_file_0/reg_bit_5/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1771 gnd rf_dec_0/register_file_0/reg_bit_5/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1772 rf_dec_0/register_file_0/reg_bit_5/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1773 rf_dec_0/register_file_0/reg_bit_5/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1774 rf_dec_0/register_file_0/reg_bit_5/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1775 vdd rf_dec_0/register_file_0/reg_bit_5/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1776 rf_dec_0/register_file_0/reg_bit_5/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1777 gnd rf_dec_0/register_file_0/reg_bit_5/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1778 rf_dec_0/register_file_0/reg_bit_5/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1779 rf_dec_0/register_file_0/reg_bit_5/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1780 rf_dec_0/register_file_0/reg_bit_5/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1781 vdd rf_dec_0/register_file_0/reg_bit_5/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1782 rf_dec_0/register_file_0/reg_bit_5/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1783 gnd rf_dec_0/register_file_0/reg_bit_5/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1784 rf_dec_0/register_file_0/reg_bit_5/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1785 rf_dec_0/register_file_0/reg_bit_5/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1786 rf_dec_0/register_file_0/reg_bit_5/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1787 vdd rf_dec_0/register_file_0/reg_bit_5/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1788 rf_dec_0/register_file_0/reg_bit_5/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1789 gnd rf_dec_0/register_file_0/reg_bit_5/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1790 rf_dec_0/register_file_0/reg_bit_5/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1791 rf_dec_0/register_file_0/reg_bit_5/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1792 rf_dec_0/register_file_0/reg_bit_5/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1793 vdd rf_dec_0/register_file_0/reg_bit_5/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1794 rf_dec_0/register_file_0/reg_bit_5/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1795 gnd rf_dec_0/register_file_0/reg_bit_5/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1796 rf_dec_0/register_file_0/reg_bit_5/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_5/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1797 rf_dec_0/register_file_0/reg_bit_5/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_5/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1798 rf_dec_0/register_file_0/reg_bit_5/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_5/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1799 rf_dec_0/register_file_0/reg_bit_5/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1800 rf_dec_0/register_file_0/reg_bit_5/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_5/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1801 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_5/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1802 vdd rf_dec_0/register_file_0/reg_bit_4/A_ Ad3 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1803 rf_dec_0/register_file_0/reg_bit_4/A_ Ad3 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1804 rf_dec_0/register_file_0/reg_bit_4/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_4/A_ Ad3 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M1805 rf_dec_0/register_file_0/reg_bit_4/A_ Ad3 rf_dec_0/register_file_0/reg_bit_4/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1806 rf_dec_0/register_file_0/reg_bit_4/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1807 Ad3 REG_As rf_dec_0/register_file_0/reg_bit_4/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1808 rf_dec_0/register_file_0/reg_bit_4/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_4/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1809 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1810 rf_dec_0/register_file_0/reg_bit_4/Bl rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1811 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_4/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1812 vdd O3 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1813 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1814 rf_dec_0/register_file_0/reg_bit_4/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M1815 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M1816 gnd O3 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1817 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1818 gnd O3 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1819 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1820 vdd O3 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1821 vdd rf_dec_0/register_file_0/reg_bit_4/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1822 rf_dec_0/register_file_0/reg_bit_4/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1823 gnd rf_dec_0/register_file_0/reg_bit_4/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1824 rf_dec_0/register_file_0/reg_bit_4/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1825 rf_dec_0/register_file_0/reg_bit_4/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1826 rf_dec_0/register_file_0/reg_bit_4/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1827 vdd rf_dec_0/register_file_0/reg_bit_4/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1828 rf_dec_0/register_file_0/reg_bit_4/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1829 gnd rf_dec_0/register_file_0/reg_bit_4/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1830 rf_dec_0/register_file_0/reg_bit_4/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1831 rf_dec_0/register_file_0/reg_bit_4/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1832 rf_dec_0/register_file_0/reg_bit_4/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1833 vdd rf_dec_0/register_file_0/reg_bit_4/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1834 rf_dec_0/register_file_0/reg_bit_4/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1835 gnd rf_dec_0/register_file_0/reg_bit_4/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1836 rf_dec_0/register_file_0/reg_bit_4/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1837 rf_dec_0/register_file_0/reg_bit_4/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1838 rf_dec_0/register_file_0/reg_bit_4/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1839 vdd rf_dec_0/register_file_0/reg_bit_4/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1840 rf_dec_0/register_file_0/reg_bit_4/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1841 gnd rf_dec_0/register_file_0/reg_bit_4/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1842 rf_dec_0/register_file_0/reg_bit_4/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1843 rf_dec_0/register_file_0/reg_bit_4/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1844 rf_dec_0/register_file_0/reg_bit_4/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1845 vdd rf_dec_0/register_file_0/reg_bit_4/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1846 rf_dec_0/register_file_0/reg_bit_4/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1847 gnd rf_dec_0/register_file_0/reg_bit_4/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1848 rf_dec_0/register_file_0/reg_bit_4/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1849 rf_dec_0/register_file_0/reg_bit_4/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1850 rf_dec_0/register_file_0/reg_bit_4/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1851 vdd rf_dec_0/register_file_0/reg_bit_4/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1852 rf_dec_0/register_file_0/reg_bit_4/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1853 gnd rf_dec_0/register_file_0/reg_bit_4/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1854 rf_dec_0/register_file_0/reg_bit_4/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1855 rf_dec_0/register_file_0/reg_bit_4/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1856 rf_dec_0/register_file_0/reg_bit_4/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1857 vdd rf_dec_0/register_file_0/reg_bit_4/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1858 rf_dec_0/register_file_0/reg_bit_4/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1859 gnd rf_dec_0/register_file_0/reg_bit_4/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1860 rf_dec_0/register_file_0/reg_bit_4/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1861 rf_dec_0/register_file_0/reg_bit_4/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1862 rf_dec_0/register_file_0/reg_bit_4/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1863 vdd rf_dec_0/register_file_0/reg_bit_4/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1864 rf_dec_0/register_file_0/reg_bit_4/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1865 gnd rf_dec_0/register_file_0/reg_bit_4/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1866 rf_dec_0/register_file_0/reg_bit_4/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_4/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1867 rf_dec_0/register_file_0/reg_bit_4/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_4/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1868 rf_dec_0/register_file_0/reg_bit_4/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_4/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1869 rf_dec_0/register_file_0/reg_bit_4/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1870 rf_dec_0/register_file_0/reg_bit_4/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_4/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1871 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_4/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1872 vdd rf_dec_0/register_file_0/reg_bit_3/A_ Ad4 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1873 rf_dec_0/register_file_0/reg_bit_3/A_ Ad4 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1874 rf_dec_0/register_file_0/reg_bit_3/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_3/A_ Ad4 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M1875 rf_dec_0/register_file_0/reg_bit_3/A_ Ad4 rf_dec_0/register_file_0/reg_bit_3/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1876 rf_dec_0/register_file_0/reg_bit_3/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1877 Ad4 REG_As rf_dec_0/register_file_0/reg_bit_3/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1878 rf_dec_0/register_file_0/reg_bit_3/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_3/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1879 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1880 rf_dec_0/register_file_0/reg_bit_3/Bl rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1881 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_3/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1882 vdd O4 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1883 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1884 rf_dec_0/register_file_0/reg_bit_3/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M1885 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M1886 gnd O4 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1887 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1888 gnd O4 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1889 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1890 vdd O4 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1891 vdd rf_dec_0/register_file_0/reg_bit_3/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1892 rf_dec_0/register_file_0/reg_bit_3/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1893 gnd rf_dec_0/register_file_0/reg_bit_3/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1894 rf_dec_0/register_file_0/reg_bit_3/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1895 rf_dec_0/register_file_0/reg_bit_3/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1896 rf_dec_0/register_file_0/reg_bit_3/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1897 vdd rf_dec_0/register_file_0/reg_bit_3/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1898 rf_dec_0/register_file_0/reg_bit_3/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1899 gnd rf_dec_0/register_file_0/reg_bit_3/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1900 rf_dec_0/register_file_0/reg_bit_3/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1901 rf_dec_0/register_file_0/reg_bit_3/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1902 rf_dec_0/register_file_0/reg_bit_3/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1903 vdd rf_dec_0/register_file_0/reg_bit_3/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1904 rf_dec_0/register_file_0/reg_bit_3/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1905 gnd rf_dec_0/register_file_0/reg_bit_3/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1906 rf_dec_0/register_file_0/reg_bit_3/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1907 rf_dec_0/register_file_0/reg_bit_3/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1908 rf_dec_0/register_file_0/reg_bit_3/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1909 vdd rf_dec_0/register_file_0/reg_bit_3/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1910 rf_dec_0/register_file_0/reg_bit_3/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1911 gnd rf_dec_0/register_file_0/reg_bit_3/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1912 rf_dec_0/register_file_0/reg_bit_3/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1913 rf_dec_0/register_file_0/reg_bit_3/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1914 rf_dec_0/register_file_0/reg_bit_3/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1915 vdd rf_dec_0/register_file_0/reg_bit_3/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1916 rf_dec_0/register_file_0/reg_bit_3/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1917 gnd rf_dec_0/register_file_0/reg_bit_3/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1918 rf_dec_0/register_file_0/reg_bit_3/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1919 rf_dec_0/register_file_0/reg_bit_3/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1920 rf_dec_0/register_file_0/reg_bit_3/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1921 vdd rf_dec_0/register_file_0/reg_bit_3/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1922 rf_dec_0/register_file_0/reg_bit_3/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1923 gnd rf_dec_0/register_file_0/reg_bit_3/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1924 rf_dec_0/register_file_0/reg_bit_3/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1925 rf_dec_0/register_file_0/reg_bit_3/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1926 rf_dec_0/register_file_0/reg_bit_3/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1927 vdd rf_dec_0/register_file_0/reg_bit_3/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1928 rf_dec_0/register_file_0/reg_bit_3/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1929 gnd rf_dec_0/register_file_0/reg_bit_3/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1930 rf_dec_0/register_file_0/reg_bit_3/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1931 rf_dec_0/register_file_0/reg_bit_3/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1932 rf_dec_0/register_file_0/reg_bit_3/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1933 vdd rf_dec_0/register_file_0/reg_bit_3/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1934 rf_dec_0/register_file_0/reg_bit_3/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1935 gnd rf_dec_0/register_file_0/reg_bit_3/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1936 rf_dec_0/register_file_0/reg_bit_3/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_3/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1937 rf_dec_0/register_file_0/reg_bit_3/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_3/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1938 rf_dec_0/register_file_0/reg_bit_3/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_3/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1939 rf_dec_0/register_file_0/reg_bit_3/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1940 rf_dec_0/register_file_0/reg_bit_3/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_3/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1941 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_3/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M1942 vdd rf_dec_0/register_file_0/reg_bit_2/A_ Ad5 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1943 rf_dec_0/register_file_0/reg_bit_2/A_ Ad5 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M1944 rf_dec_0/register_file_0/reg_bit_2/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_2/A_ Ad5 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M1945 rf_dec_0/register_file_0/reg_bit_2/A_ Ad5 rf_dec_0/register_file_0/reg_bit_2/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M1946 rf_dec_0/register_file_0/reg_bit_2/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1947 Ad5 REG_As rf_dec_0/register_file_0/reg_bit_2/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M1948 rf_dec_0/register_file_0/reg_bit_2/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_2/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M1949 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1950 rf_dec_0/register_file_0/reg_bit_2/Bl rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1951 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_2/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M1952 vdd O5 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1953 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M1954 rf_dec_0/register_file_0/reg_bit_2/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M1955 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M1956 gnd O5 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M1957 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1958 gnd O5 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1959 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M1960 vdd O5 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1961 vdd rf_dec_0/register_file_0/reg_bit_2/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1962 rf_dec_0/register_file_0/reg_bit_2/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1963 gnd rf_dec_0/register_file_0/reg_bit_2/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1964 rf_dec_0/register_file_0/reg_bit_2/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1965 rf_dec_0/register_file_0/reg_bit_2/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1966 rf_dec_0/register_file_0/reg_bit_2/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1967 vdd rf_dec_0/register_file_0/reg_bit_2/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1968 rf_dec_0/register_file_0/reg_bit_2/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1969 gnd rf_dec_0/register_file_0/reg_bit_2/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1970 rf_dec_0/register_file_0/reg_bit_2/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1971 rf_dec_0/register_file_0/reg_bit_2/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1972 rf_dec_0/register_file_0/reg_bit_2/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1973 vdd rf_dec_0/register_file_0/reg_bit_2/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1974 rf_dec_0/register_file_0/reg_bit_2/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1975 gnd rf_dec_0/register_file_0/reg_bit_2/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1976 rf_dec_0/register_file_0/reg_bit_2/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1977 rf_dec_0/register_file_0/reg_bit_2/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1978 rf_dec_0/register_file_0/reg_bit_2/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1979 vdd rf_dec_0/register_file_0/reg_bit_2/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1980 rf_dec_0/register_file_0/reg_bit_2/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1981 gnd rf_dec_0/register_file_0/reg_bit_2/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1982 rf_dec_0/register_file_0/reg_bit_2/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1983 rf_dec_0/register_file_0/reg_bit_2/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1984 rf_dec_0/register_file_0/reg_bit_2/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1985 vdd rf_dec_0/register_file_0/reg_bit_2/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1986 rf_dec_0/register_file_0/reg_bit_2/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1987 gnd rf_dec_0/register_file_0/reg_bit_2/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1988 rf_dec_0/register_file_0/reg_bit_2/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1989 rf_dec_0/register_file_0/reg_bit_2/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1990 rf_dec_0/register_file_0/reg_bit_2/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1991 vdd rf_dec_0/register_file_0/reg_bit_2/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1992 rf_dec_0/register_file_0/reg_bit_2/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1993 gnd rf_dec_0/register_file_0/reg_bit_2/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M1994 rf_dec_0/register_file_0/reg_bit_2/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M1995 rf_dec_0/register_file_0/reg_bit_2/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1996 rf_dec_0/register_file_0/reg_bit_2/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1997 vdd rf_dec_0/register_file_0/reg_bit_2/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M1998 rf_dec_0/register_file_0/reg_bit_2/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1999 gnd rf_dec_0/register_file_0/reg_bit_2/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2000 rf_dec_0/register_file_0/reg_bit_2/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2001 rf_dec_0/register_file_0/reg_bit_2/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2002 rf_dec_0/register_file_0/reg_bit_2/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2003 vdd rf_dec_0/register_file_0/reg_bit_2/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2004 rf_dec_0/register_file_0/reg_bit_2/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2005 gnd rf_dec_0/register_file_0/reg_bit_2/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2006 rf_dec_0/register_file_0/reg_bit_2/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_2/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2007 rf_dec_0/register_file_0/reg_bit_2/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_2/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2008 rf_dec_0/register_file_0/reg_bit_2/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_2/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2009 rf_dec_0/register_file_0/reg_bit_2/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2010 rf_dec_0/register_file_0/reg_bit_2/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_2/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2011 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_2/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2012 vdd rf_dec_0/register_file_0/reg_bit_1/A_ Ad6 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M2013 rf_dec_0/register_file_0/reg_bit_1/A_ Ad6 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M2014 rf_dec_0/register_file_0/reg_bit_1/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_1/A_ Ad6 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M2015 rf_dec_0/register_file_0/reg_bit_1/A_ Ad6 rf_dec_0/register_file_0/reg_bit_1/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M2016 rf_dec_0/register_file_0/reg_bit_1/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M2017 Ad6 REG_As rf_dec_0/register_file_0/reg_bit_1/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M2018 rf_dec_0/register_file_0/reg_bit_1/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_1/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M2019 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M2020 rf_dec_0/register_file_0/reg_bit_1/Bl rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M2021 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_1/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M2022 vdd O6 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M2023 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M2024 rf_dec_0/register_file_0/reg_bit_1/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M2025 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M2026 gnd O6 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M2027 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2028 gnd O6 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2029 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M2030 vdd O6 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M2031 vdd rf_dec_0/register_file_0/reg_bit_1/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2032 rf_dec_0/register_file_0/reg_bit_1/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2033 gnd rf_dec_0/register_file_0/reg_bit_1/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2034 rf_dec_0/register_file_0/reg_bit_1/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2035 rf_dec_0/register_file_0/reg_bit_1/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2036 rf_dec_0/register_file_0/reg_bit_1/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2037 vdd rf_dec_0/register_file_0/reg_bit_1/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2038 rf_dec_0/register_file_0/reg_bit_1/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2039 gnd rf_dec_0/register_file_0/reg_bit_1/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2040 rf_dec_0/register_file_0/reg_bit_1/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2041 rf_dec_0/register_file_0/reg_bit_1/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2042 rf_dec_0/register_file_0/reg_bit_1/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2043 vdd rf_dec_0/register_file_0/reg_bit_1/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2044 rf_dec_0/register_file_0/reg_bit_1/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2045 gnd rf_dec_0/register_file_0/reg_bit_1/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2046 rf_dec_0/register_file_0/reg_bit_1/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2047 rf_dec_0/register_file_0/reg_bit_1/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2048 rf_dec_0/register_file_0/reg_bit_1/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2049 vdd rf_dec_0/register_file_0/reg_bit_1/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2050 rf_dec_0/register_file_0/reg_bit_1/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2051 gnd rf_dec_0/register_file_0/reg_bit_1/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2052 rf_dec_0/register_file_0/reg_bit_1/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2053 rf_dec_0/register_file_0/reg_bit_1/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2054 rf_dec_0/register_file_0/reg_bit_1/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2055 vdd rf_dec_0/register_file_0/reg_bit_1/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2056 rf_dec_0/register_file_0/reg_bit_1/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2057 gnd rf_dec_0/register_file_0/reg_bit_1/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2058 rf_dec_0/register_file_0/reg_bit_1/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2059 rf_dec_0/register_file_0/reg_bit_1/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2060 rf_dec_0/register_file_0/reg_bit_1/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2061 vdd rf_dec_0/register_file_0/reg_bit_1/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2062 rf_dec_0/register_file_0/reg_bit_1/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2063 gnd rf_dec_0/register_file_0/reg_bit_1/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2064 rf_dec_0/register_file_0/reg_bit_1/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2065 rf_dec_0/register_file_0/reg_bit_1/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2066 rf_dec_0/register_file_0/reg_bit_1/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2067 vdd rf_dec_0/register_file_0/reg_bit_1/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2068 rf_dec_0/register_file_0/reg_bit_1/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2069 gnd rf_dec_0/register_file_0/reg_bit_1/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2070 rf_dec_0/register_file_0/reg_bit_1/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2071 rf_dec_0/register_file_0/reg_bit_1/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2072 rf_dec_0/register_file_0/reg_bit_1/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2073 vdd rf_dec_0/register_file_0/reg_bit_1/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2074 rf_dec_0/register_file_0/reg_bit_1/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2075 gnd rf_dec_0/register_file_0/reg_bit_1/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2076 rf_dec_0/register_file_0/reg_bit_1/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_1/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2077 rf_dec_0/register_file_0/reg_bit_1/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_1/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2078 rf_dec_0/register_file_0/reg_bit_1/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_1/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2079 rf_dec_0/register_file_0/reg_bit_1/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2080 rf_dec_0/register_file_0/reg_bit_1/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_1/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2081 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_1/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2082 vdd rf_dec_0/register_file_0/reg_bit_0/A_ Ad7 vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M2083 rf_dec_0/register_file_0/reg_bit_0/A_ Ad7 vdd vdd CMOSPTT w=8 l=2
+  ad=200 pd=100 as=0 ps=0
M2084 rf_dec_0/register_file_0/reg_bit_0/diffamp_0/a_92_n2# rf_dec_0/register_file_0/reg_bit_0/A_ Ad7 Gnd CMOSNTT w=4 l=2
+  ad=112 pd=72 as=0 ps=0
M2085 rf_dec_0/register_file_0/reg_bit_0/A_ Ad7 rf_dec_0/register_file_0/reg_bit_0/diffamp_0/a_92_n2# Gnd CMOSNTT w=4 l=2
+  ad=28 pd=22 as=0 ps=0
M2086 rf_dec_0/register_file_0/reg_bit_0/diffamp_0/a_92_n2# REG_As gnd Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M2087 Ad7 REG_As rf_dec_0/register_file_0/reg_bit_0/Bl Vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=432 ps=192
M2088 rf_dec_0/register_file_0/reg_bit_0/Bl_ REG_As rf_dec_0/register_file_0/reg_bit_0/A_ Vdd CMOSPTT w=32 l=2
+  ad=432 pd=192 as=0 ps=0
M2089 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n4# rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_0_n21# vdd Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M2090 rf_dec_0/register_file_0/reg_bit_0/Bl rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M2091 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_28_n4# rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n15# rf_dec_0/register_file_0/reg_bit_0/Bl_ Vdd CMOSPTT w=16 l=2
+  ad=48 pd=38 as=0 ps=0
M2092 vdd O7 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_28_n4# Vdd CMOSPTT w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M2093 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n30# rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_0_n21# gnd Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=0 ps=0
M2094 rf_dec_0/register_file_0/reg_bit_0/Bl REG_Ds rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n30# Gnd CMOSNTT w=8 l=2
+  ad=280 pd=202 as=0 ps=0
M2095 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_28_n30# REG_Ds rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=8 l=2
+  ad=24 pd=22 as=280 ps=202
M2096 gnd O7 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_28_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=0 ps=0
M2097 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n15# REG_Ds gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2098 gnd O7 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_0_n21# Gnd CMOSNTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2099 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n15# REG_Ds vdd Vdd CMOSPTT w=8 l=2
+  ad=40 pd=26 as=0 ps=0
M2100 vdd O7 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_0_n21# Vdd CMOSPTT w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M2101 vdd rf_dec_0/register_file_0/reg_bit_0/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_4/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2102 rf_dec_0/register_file_0/reg_bit_0/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_4/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2103 gnd rf_dec_0/register_file_0/reg_bit_0/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_4/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2104 rf_dec_0/register_file_0/reg_bit_0/sram_4/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_4/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2105 rf_dec_0/register_file_0/reg_bit_0/sram_4/a_n2_n30# En7 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2106 rf_dec_0/register_file_0/reg_bit_0/sram_4/a_5_n27# En7 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2107 vdd rf_dec_0/register_file_0/reg_bit_0/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_0/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2108 rf_dec_0/register_file_0/reg_bit_0/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_0/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2109 gnd rf_dec_0/register_file_0/reg_bit_0/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_0/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2110 rf_dec_0/register_file_0/reg_bit_0/sram_0/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_0/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2111 rf_dec_0/register_file_0/reg_bit_0/sram_0/a_n2_n30# En6 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2112 rf_dec_0/register_file_0/reg_bit_0/sram_0/a_5_n27# En6 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2113 vdd rf_dec_0/register_file_0/reg_bit_0/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_1/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2114 rf_dec_0/register_file_0/reg_bit_0/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_1/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2115 gnd rf_dec_0/register_file_0/reg_bit_0/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_1/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2116 rf_dec_0/register_file_0/reg_bit_0/sram_1/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_1/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2117 rf_dec_0/register_file_0/reg_bit_0/sram_1/a_n2_n30# En5 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2118 rf_dec_0/register_file_0/reg_bit_0/sram_1/a_5_n27# En5 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2119 vdd rf_dec_0/register_file_0/reg_bit_0/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_2/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2120 rf_dec_0/register_file_0/reg_bit_0/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_2/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2121 gnd rf_dec_0/register_file_0/reg_bit_0/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_2/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2122 rf_dec_0/register_file_0/reg_bit_0/sram_2/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_2/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2123 rf_dec_0/register_file_0/reg_bit_0/sram_2/a_n2_n30# En4 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2124 rf_dec_0/register_file_0/reg_bit_0/sram_2/a_5_n27# En4 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2125 vdd rf_dec_0/register_file_0/reg_bit_0/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_3/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2126 rf_dec_0/register_file_0/reg_bit_0/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_3/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2127 gnd rf_dec_0/register_file_0/reg_bit_0/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_3/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2128 rf_dec_0/register_file_0/reg_bit_0/sram_3/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_3/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2129 rf_dec_0/register_file_0/reg_bit_0/sram_3/a_n2_n30# En3 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2130 rf_dec_0/register_file_0/reg_bit_0/sram_3/a_5_n27# En3 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2131 vdd rf_dec_0/register_file_0/reg_bit_0/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_5/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2132 rf_dec_0/register_file_0/reg_bit_0/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_5/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2133 gnd rf_dec_0/register_file_0/reg_bit_0/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_5/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2134 rf_dec_0/register_file_0/reg_bit_0/sram_5/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_5/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2135 rf_dec_0/register_file_0/reg_bit_0/sram_5/a_n2_n30# En2 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2136 rf_dec_0/register_file_0/reg_bit_0/sram_5/a_5_n27# En2 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2137 vdd rf_dec_0/register_file_0/reg_bit_0/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_6/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2138 rf_dec_0/register_file_0/reg_bit_0/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_6/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2139 gnd rf_dec_0/register_file_0/reg_bit_0/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_6/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2140 rf_dec_0/register_file_0/reg_bit_0/sram_6/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_6/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2141 rf_dec_0/register_file_0/reg_bit_0/sram_6/a_n2_n30# En1 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2142 rf_dec_0/register_file_0/reg_bit_0/sram_6/a_5_n27# En1 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2143 vdd rf_dec_0/register_file_0/reg_bit_0/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_7/a_n2_n30# vdd CMOSPTT w=4 l=2
+  ad=0 pd=0 as=20 ps=18
M2144 rf_dec_0/register_file_0/reg_bit_0/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_7/a_n2_n30# vdd vdd CMOSPTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2145 gnd rf_dec_0/register_file_0/reg_bit_0/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_7/a_n2_n30# Gnd CMOSNTT w=8 l=2
+  ad=0 pd=0 as=86 ps=40
M2146 rf_dec_0/register_file_0/reg_bit_0/sram_7/a_5_n27# rf_dec_0/register_file_0/reg_bit_0/sram_7/a_n2_n30# gnd Gnd CMOSNTT w=8 l=2
+  ad=86 pd=40 as=0 ps=0
M2147 rf_dec_0/register_file_0/reg_bit_0/sram_7/a_n2_n30# En0 rf_dec_0/register_file_0/reg_bit_0/Bl Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2148 rf_dec_0/register_file_0/reg_bit_0/sram_7/a_5_n27# En0 rf_dec_0/register_file_0/reg_bit_0/Bl_ Gnd CMOSNTT w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M2149 rf_dec_0/register_file_0/reg_bit_0/Bl REG_Pc vdd vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2150 rf_dec_0/register_file_0/reg_bit_0/Bl_ REG_Pc rf_dec_0/register_file_0/reg_bit_0/Bl vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2151 vdd REG_Pc rf_dec_0/register_file_0/reg_bit_0/Bl_ vdd CMOSPTT w=32 l=2
+  ad=0 pd=0 as=0 ps=0
M2152 vdd rf_dec_0/decoder_full_0/andor_6/nand_2/A En0 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2153 En0 rf_dec_0/decoder_full_0/andor_6/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2154 rf_dec_0/decoder_full_0/andor_6/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_6/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2155 En0 rf_dec_0/decoder_full_0/andor_6/nand_2/B rf_dec_0/decoder_full_0/andor_6/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2156 vdd REG_Ds rf_dec_0/decoder_full_0/andor_6/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2157 rf_dec_0/decoder_full_0/andor_6/nand_2/B rf_dec_0/decoder_full_0/andor_6/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2158 rf_dec_0/decoder_full_0/andor_6/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2159 rf_dec_0/decoder_full_0/andor_6/nand_2/B rf_dec_0/decoder_full_0/andor_6/D rf_dec_0/decoder_full_0/andor_6/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2160 vdd REG_As rf_dec_0/decoder_full_0/andor_6/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2161 rf_dec_0/decoder_full_0/andor_6/nand_2/A rf_dec_0/decoder_full_0/andor_6/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2162 rf_dec_0/decoder_full_0/andor_6/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2163 rf_dec_0/decoder_full_0/andor_6/nand_2/A rf_dec_0/decoder_full_0/andor_6/A rf_dec_0/decoder_full_0/andor_6/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2164 vdd rf_dec_0/decoder_full_0/andor_5/nand_2/A En1 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2165 En1 rf_dec_0/decoder_full_0/andor_5/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2166 rf_dec_0/decoder_full_0/andor_5/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_5/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2167 En1 rf_dec_0/decoder_full_0/andor_5/nand_2/B rf_dec_0/decoder_full_0/andor_5/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2168 vdd REG_Ds rf_dec_0/decoder_full_0/andor_5/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2169 rf_dec_0/decoder_full_0/andor_5/nand_2/B rf_dec_0/decoder_full_0/andor_5/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2170 rf_dec_0/decoder_full_0/andor_5/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2171 rf_dec_0/decoder_full_0/andor_5/nand_2/B rf_dec_0/decoder_full_0/andor_5/D rf_dec_0/decoder_full_0/andor_5/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2172 vdd REG_As rf_dec_0/decoder_full_0/andor_5/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2173 rf_dec_0/decoder_full_0/andor_5/nand_2/A rf_dec_0/decoder_full_0/andor_5/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2174 rf_dec_0/decoder_full_0/andor_5/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2175 rf_dec_0/decoder_full_0/andor_5/nand_2/A rf_dec_0/decoder_full_0/andor_5/A rf_dec_0/decoder_full_0/andor_5/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2176 vdd rf_dec_0/decoder_full_0/andor_4/nand_2/A En2 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2177 En2 rf_dec_0/decoder_full_0/andor_4/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2178 rf_dec_0/decoder_full_0/andor_4/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_4/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2179 En2 rf_dec_0/decoder_full_0/andor_4/nand_2/B rf_dec_0/decoder_full_0/andor_4/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2180 vdd REG_Ds rf_dec_0/decoder_full_0/andor_4/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2181 rf_dec_0/decoder_full_0/andor_4/nand_2/B rf_dec_0/decoder_full_0/andor_4/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2182 rf_dec_0/decoder_full_0/andor_4/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2183 rf_dec_0/decoder_full_0/andor_4/nand_2/B rf_dec_0/decoder_full_0/andor_4/D rf_dec_0/decoder_full_0/andor_4/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2184 vdd REG_As rf_dec_0/decoder_full_0/andor_4/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2185 rf_dec_0/decoder_full_0/andor_4/nand_2/A rf_dec_0/decoder_full_0/andor_4/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2186 rf_dec_0/decoder_full_0/andor_4/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2187 rf_dec_0/decoder_full_0/andor_4/nand_2/A rf_dec_0/decoder_full_0/andor_4/A rf_dec_0/decoder_full_0/andor_4/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2188 vdd rf_dec_0/decoder_full_0/andor_3/nand_2/A En3 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2189 En3 rf_dec_0/decoder_full_0/andor_3/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2190 rf_dec_0/decoder_full_0/andor_3/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_3/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2191 En3 rf_dec_0/decoder_full_0/andor_3/nand_2/B rf_dec_0/decoder_full_0/andor_3/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2192 vdd REG_Ds rf_dec_0/decoder_full_0/andor_3/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2193 rf_dec_0/decoder_full_0/andor_3/nand_2/B rf_dec_0/decoder_full_0/andor_3/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2194 rf_dec_0/decoder_full_0/andor_3/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2195 rf_dec_0/decoder_full_0/andor_3/nand_2/B rf_dec_0/decoder_full_0/andor_3/D rf_dec_0/decoder_full_0/andor_3/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2196 vdd REG_As rf_dec_0/decoder_full_0/andor_3/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2197 rf_dec_0/decoder_full_0/andor_3/nand_2/A rf_dec_0/decoder_full_0/andor_3/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2198 rf_dec_0/decoder_full_0/andor_3/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2199 rf_dec_0/decoder_full_0/andor_3/nand_2/A rf_dec_0/decoder_full_0/andor_3/A rf_dec_0/decoder_full_0/andor_3/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2200 vdd rf_dec_0/decoder_full_0/andor_2/nand_2/A En4 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2201 En4 rf_dec_0/decoder_full_0/andor_2/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2202 rf_dec_0/decoder_full_0/andor_2/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_2/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2203 En4 rf_dec_0/decoder_full_0/andor_2/nand_2/B rf_dec_0/decoder_full_0/andor_2/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2204 vdd REG_Ds rf_dec_0/decoder_full_0/andor_2/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2205 rf_dec_0/decoder_full_0/andor_2/nand_2/B rf_dec_0/decoder_full_0/andor_2/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2206 rf_dec_0/decoder_full_0/andor_2/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2207 rf_dec_0/decoder_full_0/andor_2/nand_2/B rf_dec_0/decoder_full_0/andor_2/D rf_dec_0/decoder_full_0/andor_2/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2208 vdd REG_As rf_dec_0/decoder_full_0/andor_2/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2209 rf_dec_0/decoder_full_0/andor_2/nand_2/A rf_dec_0/decoder_full_0/andor_2/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2210 rf_dec_0/decoder_full_0/andor_2/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2211 rf_dec_0/decoder_full_0/andor_2/nand_2/A rf_dec_0/decoder_full_0/andor_2/A rf_dec_0/decoder_full_0/andor_2/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2212 vdd rf_dec_0/decoder_full_0/andor_1/nand_2/A En5 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2213 En5 rf_dec_0/decoder_full_0/andor_1/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2214 rf_dec_0/decoder_full_0/andor_1/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_1/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2215 En5 rf_dec_0/decoder_full_0/andor_1/nand_2/B rf_dec_0/decoder_full_0/andor_1/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2216 vdd REG_Ds rf_dec_0/decoder_full_0/andor_1/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2217 rf_dec_0/decoder_full_0/andor_1/nand_2/B rf_dec_0/decoder_full_0/andor_1/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2218 rf_dec_0/decoder_full_0/andor_1/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2219 rf_dec_0/decoder_full_0/andor_1/nand_2/B rf_dec_0/decoder_full_0/andor_1/D rf_dec_0/decoder_full_0/andor_1/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2220 vdd REG_As rf_dec_0/decoder_full_0/andor_1/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2221 rf_dec_0/decoder_full_0/andor_1/nand_2/A rf_dec_0/decoder_full_0/andor_1/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2222 rf_dec_0/decoder_full_0/andor_1/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2223 rf_dec_0/decoder_full_0/andor_1/nand_2/A rf_dec_0/decoder_full_0/andor_1/A rf_dec_0/decoder_full_0/andor_1/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2224 vdd rf_dec_0/decoder_full_0/andor_0/nand_2/A En6 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2225 En6 rf_dec_0/decoder_full_0/andor_0/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2226 rf_dec_0/decoder_full_0/andor_0/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_0/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2227 En6 rf_dec_0/decoder_full_0/andor_0/nand_2/B rf_dec_0/decoder_full_0/andor_0/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2228 vdd REG_Ds rf_dec_0/decoder_full_0/andor_0/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2229 rf_dec_0/decoder_full_0/andor_0/nand_2/B rf_dec_0/decoder_full_0/andor_0/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2230 rf_dec_0/decoder_full_0/andor_0/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2231 rf_dec_0/decoder_full_0/andor_0/nand_2/B rf_dec_0/decoder_full_0/andor_0/D rf_dec_0/decoder_full_0/andor_0/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2232 vdd REG_As rf_dec_0/decoder_full_0/andor_0/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2233 rf_dec_0/decoder_full_0/andor_0/nand_2/A rf_dec_0/decoder_full_0/andor_0/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2234 rf_dec_0/decoder_full_0/andor_0/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2235 rf_dec_0/decoder_full_0/andor_0/nand_2/A rf_dec_0/decoder_full_0/andor_0/A rf_dec_0/decoder_full_0/andor_0/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2236 vdd rf_dec_0/decoder_full_0/andor_7/nand_2/A En7 Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2237 En7 rf_dec_0/decoder_full_0/andor_7/nand_2/B vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2238 rf_dec_0/decoder_full_0/andor_7/nand_2/a_n12_n50# rf_dec_0/decoder_full_0/andor_7/nand_2/A gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2239 En7 rf_dec_0/decoder_full_0/andor_7/nand_2/B rf_dec_0/decoder_full_0/andor_7/nand_2/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2240 vdd REG_Ds rf_dec_0/decoder_full_0/andor_7/nand_2/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2241 rf_dec_0/decoder_full_0/andor_7/nand_2/B rf_dec_0/decoder_full_0/andor_7/D vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2242 rf_dec_0/decoder_full_0/andor_7/nand_1/a_n12_n50# REG_Ds gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2243 rf_dec_0/decoder_full_0/andor_7/nand_2/B rf_dec_0/decoder_full_0/andor_7/D rf_dec_0/decoder_full_0/andor_7/nand_1/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2244 vdd REG_As rf_dec_0/decoder_full_0/andor_7/nand_2/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M2245 rf_dec_0/decoder_full_0/andor_7/nand_2/A rf_dec_0/decoder_full_0/andor_7/A vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2246 rf_dec_0/decoder_full_0/andor_7/nand_0/a_n12_n50# REG_As gnd Gnd CMOSNTT w=22 l=2
+  ad=132 pd=56 as=0 ps=0
M2247 rf_dec_0/decoder_full_0/andor_7/nand_2/A rf_dec_0/decoder_full_0/andor_7/A rf_dec_0/decoder_full_0/andor_7/nand_0/a_n12_n50# Gnd CMOSNTT w=22 l=2
+  ad=110 pd=54 as=0 ps=0
M2248 rf_dec_0/decoder_full_0/decoder_1/3nor_7/a_7_0# A0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2249 rf_dec_0/decoder_full_0/decoder_1/3nor_7/a_15_0# A1 rf_dec_0/decoder_full_0/decoder_1/3nor_7/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2250 rf_dec_0/decoder_full_0/andor_6/A A2 rf_dec_0/decoder_full_0/decoder_1/3nor_7/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2251 rf_dec_0/decoder_full_0/andor_6/A A0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2252 gnd A1 rf_dec_0/decoder_full_0/andor_6/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2253 rf_dec_0/decoder_full_0/andor_6/A A2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2254 rf_dec_0/decoder_full_0/decoder_1/3nor_6/a_7_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2255 rf_dec_0/decoder_full_0/decoder_1/3nor_6/a_15_0# A1 rf_dec_0/decoder_full_0/decoder_1/3nor_6/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2256 rf_dec_0/decoder_full_0/andor_5/A A2 rf_dec_0/decoder_full_0/decoder_1/3nor_6/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2257 rf_dec_0/decoder_full_0/andor_5/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2258 gnd A1 rf_dec_0/decoder_full_0/andor_5/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2259 rf_dec_0/decoder_full_0/andor_5/A A2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2260 rf_dec_0/decoder_full_0/decoder_1/3nor_5/a_7_0# A0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2261 rf_dec_0/decoder_full_0/decoder_1/3nor_5/a_15_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/decoder_1/3nor_5/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2262 rf_dec_0/decoder_full_0/andor_4/A A2 rf_dec_0/decoder_full_0/decoder_1/3nor_5/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2263 rf_dec_0/decoder_full_0/andor_4/A A0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2264 gnd rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/andor_4/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2265 rf_dec_0/decoder_full_0/andor_4/A A2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2266 rf_dec_0/decoder_full_0/decoder_1/3nor_4/a_7_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2267 rf_dec_0/decoder_full_0/decoder_1/3nor_4/a_15_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/decoder_1/3nor_4/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2268 rf_dec_0/decoder_full_0/andor_3/A A2 rf_dec_0/decoder_full_0/decoder_1/3nor_4/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2269 rf_dec_0/decoder_full_0/andor_3/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2270 gnd rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/andor_3/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2271 rf_dec_0/decoder_full_0/andor_3/A A2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2272 rf_dec_0/decoder_full_0/decoder_1/3nor_3/a_7_0# A0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2273 rf_dec_0/decoder_full_0/decoder_1/3nor_3/a_15_0# A1 rf_dec_0/decoder_full_0/decoder_1/3nor_3/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2274 rf_dec_0/decoder_full_0/andor_2/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C rf_dec_0/decoder_full_0/decoder_1/3nor_3/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2275 rf_dec_0/decoder_full_0/andor_2/A A0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2276 gnd A1 rf_dec_0/decoder_full_0/andor_2/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2277 rf_dec_0/decoder_full_0/andor_2/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2278 rf_dec_0/decoder_full_0/decoder_1/3nor_2/a_7_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2279 rf_dec_0/decoder_full_0/decoder_1/3nor_2/a_15_0# A1 rf_dec_0/decoder_full_0/decoder_1/3nor_2/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2280 rf_dec_0/decoder_full_0/andor_1/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C rf_dec_0/decoder_full_0/decoder_1/3nor_2/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2281 rf_dec_0/decoder_full_0/andor_1/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2282 gnd A1 rf_dec_0/decoder_full_0/andor_1/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2283 rf_dec_0/decoder_full_0/andor_1/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2284 rf_dec_0/decoder_full_0/decoder_1/3nor_1/a_7_0# A0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2285 rf_dec_0/decoder_full_0/decoder_1/3nor_1/a_15_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/decoder_1/3nor_1/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2286 rf_dec_0/decoder_full_0/andor_0/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C rf_dec_0/decoder_full_0/decoder_1/3nor_1/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2287 rf_dec_0/decoder_full_0/andor_0/A A0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2288 gnd rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/andor_0/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2289 rf_dec_0/decoder_full_0/andor_0/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2290 rf_dec_0/decoder_full_0/decoder_1/3nor_0/a_7_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2291 rf_dec_0/decoder_full_0/decoder_1/3nor_0/a_15_0# rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/decoder_1/3nor_0/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2292 rf_dec_0/decoder_full_0/andor_7/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C rf_dec_0/decoder_full_0/decoder_1/3nor_0/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2293 rf_dec_0/decoder_full_0/andor_7/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2294 gnd rf_dec_0/decoder_full_0/decoder_1/3nor_0/B rf_dec_0/decoder_full_0/andor_7/A Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2295 rf_dec_0/decoder_full_0/andor_7/A rf_dec_0/decoder_full_0/decoder_1/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2296 rf_dec_0/decoder_full_0/decoder_1/3nor_0/B A1 vdd vdd CMOSPTT w=9 l=2
+  ad=45 pd=28 as=0 ps=0
M2297 rf_dec_0/decoder_full_0/decoder_1/3nor_0/B A1 gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2298 rf_dec_0/decoder_full_0/decoder_1/3nor_0/A A0 vdd vdd CMOSPTT w=9 l=2
+  ad=45 pd=28 as=0 ps=0
M2299 rf_dec_0/decoder_full_0/decoder_1/3nor_0/A A0 gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2300 rf_dec_0/decoder_full_0/decoder_1/3nor_0/C A2 vdd vdd CMOSPTT w=9 l=2
+  ad=45 pd=28 as=0 ps=0
M2301 rf_dec_0/decoder_full_0/decoder_1/3nor_0/C A2 gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2302 rf_dec_0/decoder_full_0/decoder_0/3nor_7/a_7_0# D0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2303 rf_dec_0/decoder_full_0/decoder_0/3nor_7/a_15_0# D1 rf_dec_0/decoder_full_0/decoder_0/3nor_7/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2304 rf_dec_0/decoder_full_0/andor_6/D D2 rf_dec_0/decoder_full_0/decoder_0/3nor_7/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2305 rf_dec_0/decoder_full_0/andor_6/D D0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2306 gnd D1 rf_dec_0/decoder_full_0/andor_6/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2307 rf_dec_0/decoder_full_0/andor_6/D D2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2308 rf_dec_0/decoder_full_0/decoder_0/3nor_6/a_7_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2309 rf_dec_0/decoder_full_0/decoder_0/3nor_6/a_15_0# D1 rf_dec_0/decoder_full_0/decoder_0/3nor_6/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2310 rf_dec_0/decoder_full_0/andor_5/D D2 rf_dec_0/decoder_full_0/decoder_0/3nor_6/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2311 rf_dec_0/decoder_full_0/andor_5/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2312 gnd D1 rf_dec_0/decoder_full_0/andor_5/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2313 rf_dec_0/decoder_full_0/andor_5/D D2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2314 rf_dec_0/decoder_full_0/decoder_0/3nor_5/a_7_0# D0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2315 rf_dec_0/decoder_full_0/decoder_0/3nor_5/a_15_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/decoder_0/3nor_5/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2316 rf_dec_0/decoder_full_0/andor_4/D D2 rf_dec_0/decoder_full_0/decoder_0/3nor_5/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2317 rf_dec_0/decoder_full_0/andor_4/D D0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2318 gnd rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/andor_4/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2319 rf_dec_0/decoder_full_0/andor_4/D D2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2320 rf_dec_0/decoder_full_0/decoder_0/3nor_4/a_7_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2321 rf_dec_0/decoder_full_0/decoder_0/3nor_4/a_15_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/decoder_0/3nor_4/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2322 rf_dec_0/decoder_full_0/andor_3/D D2 rf_dec_0/decoder_full_0/decoder_0/3nor_4/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2323 rf_dec_0/decoder_full_0/andor_3/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2324 gnd rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/andor_3/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2325 rf_dec_0/decoder_full_0/andor_3/D D2 gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2326 rf_dec_0/decoder_full_0/decoder_0/3nor_3/a_7_0# D0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2327 rf_dec_0/decoder_full_0/decoder_0/3nor_3/a_15_0# D1 rf_dec_0/decoder_full_0/decoder_0/3nor_3/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2328 rf_dec_0/decoder_full_0/andor_2/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C rf_dec_0/decoder_full_0/decoder_0/3nor_3/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2329 rf_dec_0/decoder_full_0/andor_2/D D0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2330 gnd D1 rf_dec_0/decoder_full_0/andor_2/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2331 rf_dec_0/decoder_full_0/andor_2/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2332 rf_dec_0/decoder_full_0/decoder_0/3nor_2/a_7_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2333 rf_dec_0/decoder_full_0/decoder_0/3nor_2/a_15_0# D1 rf_dec_0/decoder_full_0/decoder_0/3nor_2/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2334 rf_dec_0/decoder_full_0/andor_1/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C rf_dec_0/decoder_full_0/decoder_0/3nor_2/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2335 rf_dec_0/decoder_full_0/andor_1/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2336 gnd D1 rf_dec_0/decoder_full_0/andor_1/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2337 rf_dec_0/decoder_full_0/andor_1/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2338 rf_dec_0/decoder_full_0/decoder_0/3nor_1/a_7_0# D0 vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2339 rf_dec_0/decoder_full_0/decoder_0/3nor_1/a_15_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/decoder_0/3nor_1/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2340 rf_dec_0/decoder_full_0/andor_0/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C rf_dec_0/decoder_full_0/decoder_0/3nor_1/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2341 rf_dec_0/decoder_full_0/andor_0/D D0 gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2342 gnd rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/andor_0/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2343 rf_dec_0/decoder_full_0/andor_0/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2344 rf_dec_0/decoder_full_0/decoder_0/3nor_0/a_7_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/A vdd vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2345 rf_dec_0/decoder_full_0/decoder_0/3nor_0/a_15_0# rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/decoder_0/3nor_0/a_7_0# vdd CMOSPTT w=24 l=2
+  ad=144 pd=60 as=0 ps=0
M2346 rf_dec_0/decoder_full_0/andor_7/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C rf_dec_0/decoder_full_0/decoder_0/3nor_0/a_15_0# vdd CMOSPTT w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M2347 rf_dec_0/decoder_full_0/andor_7/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/A gnd Gnd CMOSNTT w=7 l=2
+  ad=77 pd=50 as=0 ps=0
M2348 gnd rf_dec_0/decoder_full_0/decoder_0/3nor_0/B rf_dec_0/decoder_full_0/andor_7/D Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2349 rf_dec_0/decoder_full_0/andor_7/D rf_dec_0/decoder_full_0/decoder_0/3nor_0/C gnd Gnd CMOSNTT w=7 l=2
+  ad=0 pd=0 as=0 ps=0
M2350 rf_dec_0/decoder_full_0/decoder_0/3nor_0/B D1 vdd vdd CMOSPTT w=9 l=2
+  ad=45 pd=28 as=0 ps=0
M2351 rf_dec_0/decoder_full_0/decoder_0/3nor_0/B D1 gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2352 rf_dec_0/decoder_full_0/decoder_0/3nor_0/A D0 vdd vdd CMOSPTT w=9 l=2
+  ad=45 pd=28 as=0 ps=0
M2353 rf_dec_0/decoder_full_0/decoder_0/3nor_0/A D0 gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M2354 rf_dec_0/decoder_full_0/decoder_0/3nor_0/C D2 vdd vdd CMOSPTT w=9 l=2
+  ad=45 pd=28 as=0 ps=0
M2355 rf_dec_0/decoder_full_0/decoder_0/3nor_0/C D2 gnd Gnd CMOSNTT w=4 l=2
+  ad=20 pd=18 as=0 ps=0
C0 O3 vdd 7.410270fF
C1 rf_dec_0/decoder_full_0/andor_4/A rf_dec_0/decoder_full_0/andor_5/D 3.483360fF
C2 rf_dec_0/register_file_0/reg_bit_3/A_ vdd 5.819940fF
C3 REG_Pc vdd 13.194719fF
C4 alu_reg_0/reg_bit1_1/Bl_ vdd 5.259000fF
C5 rf_dec_0/decoder_full_0/andor_3/A rf_dec_0/decoder_full_0/andor_6/D 6.758760fF
C6 O6 S3 4.214760fF
C7 Select gnd 2.977320fF
C8 rf_dec_0/register_file_0/reg_bit_1/Bl_ vdd 13.453560fF
C9 alu_reg_0/reg_bit1_0/Bl_ vdd 5.259000fF
C10 alu_reg_0/reg_bit1_6/Bl vdd 5.206560fF
C11 rf_dec_0/decoder_full_0/decoder_0/3nor_0/C vdd 7.041420fF
C12 rf_dec_0/register_file_0/reg_bit_5/Bl_ gnd 3.754919fF
C13 rf_dec_0/decoder_full_0/decoder_1/3nor_0/B vdd 3.270960fF
C14 rf_dec_0/register_file_0/reg_bit_6/Bl vdd 13.401120fF
C15 rf_dec_0/register_file_0/reg_bit_3/Bl_ vdd 13.453560fF
C16 vdd rf_dec_0/register_file_0/reg_bit_0/Bl 13.401120fF
C17 rf_dec_0/register_file_0/reg_bit_1/A_ vdd 5.819940fF
C18 rf_dec_0/register_file_0/reg_bit_2/Bl gnd 3.764040fF
C19 O4 vdd 7.410270fF
C20 rf_dec_0/decoder_full_0/decoder_1/3nor_0/C vdd 7.041420fF
C21 alu_reg_0/reg_bit1_1/Bl vdd 5.206560fF
C22 rf_dec_0/Bl vdd 13.401119fF
C23 O6 S2 5.776380fF
C24 alu_reg_0/reg_bit1_7/Bl_ vdd 5.558880fF
C25 rf_dec_0/register_file_0/reg_bit_4/Bl_ vdd 13.453560fF
C26 alu_reg_0/reg_bit1_2/Bl vdd 5.206560fF
C27 rf_dec_0/register_file_0/reg_bit_2/A_ vdd 5.819940fF
C28 rf_dec_0/decoder_full_0/decoder_0/3nor_0/B vdd 3.270960fF
C29 rf_dec_0/register_file_0/reg_bit_2/Bl_ vdd 13.453560fF
C30 alu_reg_0/reg_bit1_6/Bl_ vdd 5.259000fF
C31 gnd vdd 130.689578fF
C32 rf_dec_0/register_file_0/reg_bit_7/Bl_ vdd 13.453560fF
C33 Subtract O6 2.347920fF
C34 rf_dec_0/register_file_0/reg_bit_0/A_ vdd 5.819940fF
C35 vdd rf_dec_0/register_file_0/reg_bit_0/Bl_ 13.453560fF
C36 O1 vdd 7.410270fF
C37 rf_dec_0/register_file_0/reg_bit_4/Bl vdd 13.401120fF
C38 vdd REG_Ds 3.068190fF
C39 rf_dec_0/register_file_0/reg_bit_5/A_ vdd 5.819940fF
C40 S2 O7 5.264160fF
C41 REG_As gnd 3.790200fF
C42 O6 vdd 7.410270fF
C43 alu_reg_0/reg_bit1_4/Bl_ vdd 5.259000fF
C44 rf_dec_0/decoder_full_0/decoder_1/3nor_0/A vdd 4.514940fF
C45 alu_reg_0/reg_bit1_4/A_ vdd 5.819940fF
C46 rf_dec_0/register_file_0/reg_bit_5/Bl_ vdd 13.453560fF
C47 alu_reg_0/reg_bit1_7/Bl vdd 5.206560fF
C48 alu_reg_0/reg_bit1_5/Bl_ vdd 5.259000fF
C49 alu_reg_0/reg_bit1_0/Bl vdd 5.500320fF
C50 alu_reg_0/reg_bit1_7/A_ vdd 5.819940fF
C51 alu_reg_0/reg_bit1_0/A_ vdd 5.819940fF
C52 rf_dec_0/register_file_0/reg_bit_2/Bl vdd 13.401120fF
C53 rf_dec_0/register_file_0/reg_bit_6/Bl_ gnd 3.754919fF
C54 rf_dec_0/register_file_0/reg_bit_5/Bl gnd 3.764040fF
C55 rf_dec_0/decoder_full_0/andor_3/A rf_dec_0/decoder_full_0/andor_5/D 6.857040fF
C56 alu_reg_0/reg_bit1_3/A_ vdd 5.819940fF
C57 vdd O7 7.410270fF
C58 rf_dec_0/decoder_full_0/andor_2/A rf_dec_0/decoder_full_0/andor_6/D 7.937700fF
C59 rf_dec_0/register_file_0/reg_bit_3/Bl gnd 3.764040fF
C60 O2 vdd 7.410270fF
C61 O5 S3 2.917860fF
C62 rf_dec_0/register_file_0/reg_bit_1/Bl gnd 3.764040fF
C63 alu_reg_0/reg_bit1_3/Bl vdd 5.206560fF
C64 alu_reg_0/reg_bit1_4/Bl vdd 5.206560fF
C65 rf_dec_0/register_file_0/reg_bit_7/A_ vdd 5.819940fF
C66 alu_reg_0/reg_bit1_2/A_ vdd 5.819940fF
C67 rf_dec_0/register_file_0/reg_bit_1/Bl_ gnd 3.754919fF
C68 REG_As vdd 3.704580fF
C69 rf_dec_0/register_file_0/reg_bit_6/Bl gnd 3.764040fF
C70 rf_dec_0/register_file_0/reg_bit_3/Bl_ gnd 3.754919fF
C71 REG_As rf_dec_0/decoder_full_0/andor_1/D 2.853240fF
C72 I0 Subtract 2.001120fF
C73 gnd rf_dec_0/register_file_0/reg_bit_0/Bl 3.764040fF
C74 rf_dec_0/register_file_0/reg_bit_6/A_ vdd 5.819940fF
C75 alu_reg_0/reg_bit1_5/Bl vdd 5.206560fF
C76 alu_reg_0/reg_bit1_5/A_ vdd 5.819940fF
C77 O0 vdd 7.854870fF
C78 rf_dec_0/decoder_full_0/decoder_0/3nor_0/A vdd 4.514940fF
C79 rf_dec_0/Bl gnd 3.764040fF
C80 rf_dec_0/register_file_0/reg_bit_4/Bl_ gnd 3.754919fF
C81 alu_reg_0/reg_bit1_1/A_ vdd 5.819940fF
C82 alu_reg_0/reg_bit1_6/A_ vdd 5.819940fF
C83 alu_reg_0/reg_bit1_3/Bl_ vdd 5.259000fF
C84 rf_dec_0/register_file_0/reg_bit_6/Bl_ vdd 13.453560fF
C85 rf_dec_0/register_file_0/reg_bit_2/Bl_ gnd 3.754919fF
C86 rf_dec_0/register_file_0/reg_bit_4/A_ vdd 5.819940fF
C87 S1 O7 2.930100fF
C88 rf_dec_0/register_file_0/reg_bit_5/Bl vdd 13.401120fF
C89 rf_dec_0/register_file_0/reg_bit_7/Bl_ gnd 3.754919fF
C90 alu_reg_0/reg_bit1_2/Bl_ vdd 5.259000fF
C91 gnd rf_dec_0/register_file_0/reg_bit_0/Bl_ 3.754919fF
C92 rf_dec_0/register_file_0/reg_bit_4/Bl gnd 3.764040fF
C93 gnd REG_Ds 14.604420fF
C94 O5 vdd 7.410270fF
C95 rf_dec_0/register_file_0/reg_bit_3/Bl vdd 13.401120fF
C96 rf_dec_0/register_file_0/reg_bit_1/Bl vdd 13.401120fF
C97 REG_Ds gnd! 94.557336fF
C98 vdd gnd! 1801.402000fF
C99 rf_dec_0/decoder_full_0/andor_7/D gnd! 6.099480fF
C100 rf_dec_0/decoder_full_0/andor_0/D gnd! 10.064340fF
C101 rf_dec_0/decoder_full_0/andor_1/D gnd! 12.231211fF
C102 rf_dec_0/decoder_full_0/andor_2/D gnd! 13.945080fF
C103 rf_dec_0/decoder_full_0/decoder_0/3nor_0/C gnd! 19.405662fF
C104 rf_dec_0/decoder_full_0/andor_3/D gnd! 11.909601fF
C105 rf_dec_0/decoder_full_0/andor_4/D gnd! 10.131842fF
C106 rf_dec_0/decoder_full_0/decoder_0/3nor_0/B gnd! 24.701361fF
C107 rf_dec_0/decoder_full_0/andor_5/D gnd! 6.454701fF
C108 rf_dec_0/decoder_full_0/decoder_0/3nor_0/A gnd! 33.887840fF
C109 rf_dec_0/decoder_full_0/andor_7/A gnd! 9.578582fF
C110 rf_dec_0/decoder_full_0/andor_0/A gnd! 11.290682fF
C111 rf_dec_0/decoder_full_0/andor_1/A gnd! 4.704941fF
C112 rf_dec_0/decoder_full_0/andor_2/A gnd! 4.704941fF
C113 rf_dec_0/decoder_full_0/decoder_1/3nor_0/C gnd! 19.405662fF
C114 rf_dec_0/decoder_full_0/andor_3/A gnd! 5.022119fF
C115 rf_dec_0/decoder_full_0/andor_4/A gnd! 5.022121fF
C116 rf_dec_0/decoder_full_0/decoder_1/3nor_0/B gnd! 24.701361fF
C117 rf_dec_0/decoder_full_0/andor_5/A gnd! 7.216100fF
C118 rf_dec_0/decoder_full_0/decoder_1/3nor_0/A gnd! 33.887840fF
C119 rf_dec_0/decoder_full_0/andor_6/A gnd! 5.291160fF
C120 rf_dec_0/decoder_full_0/andor_7/nand_2/B gnd! 9.028081fF
C121 rf_dec_0/decoder_full_0/andor_7/nand_2/A gnd! 8.842320fF
C122 rf_dec_0/decoder_full_0/andor_0/nand_2/B gnd! 9.028081fF
C123 rf_dec_0/decoder_full_0/andor_0/nand_2/A gnd! 8.842320fF
C124 rf_dec_0/decoder_full_0/andor_1/nand_2/B gnd! 9.028081fF
C125 rf_dec_0/decoder_full_0/andor_1/nand_2/A gnd! 8.842320fF
C126 rf_dec_0/decoder_full_0/andor_2/nand_2/B gnd! 9.028081fF
C127 rf_dec_0/decoder_full_0/andor_2/nand_2/A gnd! 8.842320fF
C128 rf_dec_0/decoder_full_0/andor_3/nand_2/B gnd! 9.028081fF
C129 rf_dec_0/decoder_full_0/andor_3/nand_2/A gnd! 8.842320fF
C130 rf_dec_0/decoder_full_0/andor_4/nand_2/B gnd! 9.028081fF
C131 rf_dec_0/decoder_full_0/andor_4/nand_2/A gnd! 8.842320fF
C132 rf_dec_0/decoder_full_0/andor_5/nand_2/B gnd! 9.028081fF
C133 rf_dec_0/decoder_full_0/andor_5/nand_2/A gnd! 8.842320fF
C134 gnd gnd! 1582.782750fF
C135 rf_dec_0/decoder_full_0/andor_6/nand_2/B gnd! 9.028081fF
C136 rf_dec_0/decoder_full_0/andor_6/nand_2/A gnd! 8.842320fF
C137 O7 gnd! 434.398906fF
C138 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_0_n21# gnd! 4.047120fF
C139 rf_dec_0/register_file_0/reg_bit_0/write_driver_0/a_7_n15# gnd! 4.037310fF
C140 rf_dec_0/register_file_0/reg_bit_0/Bl_ gnd! 25.465375fF
C141 rf_dec_0/register_file_0/reg_bit_0/Bl gnd! 26.168096fF
C142 rf_dec_0/register_file_0/reg_bit_0/A_ gnd! 4.813080fF
C143 O6 gnd! 54.642543fF
C144 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_0_n21# gnd! 4.047120fF
C145 rf_dec_0/register_file_0/reg_bit_1/write_driver_0/a_7_n15# gnd! 4.037310fF
C146 rf_dec_0/register_file_0/reg_bit_1/Bl_ gnd! 25.465375fF
C147 rf_dec_0/register_file_0/reg_bit_1/Bl gnd! 26.168096fF
C148 rf_dec_0/register_file_0/reg_bit_1/A_ gnd! 4.813080fF
C149 O5 gnd! 49.431547fF
C150 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_0_n21# gnd! 4.047120fF
C151 rf_dec_0/register_file_0/reg_bit_2/write_driver_0/a_7_n15# gnd! 4.037310fF
C152 rf_dec_0/register_file_0/reg_bit_2/Bl_ gnd! 25.465375fF
C153 rf_dec_0/register_file_0/reg_bit_2/Bl gnd! 26.168096fF
C154 rf_dec_0/register_file_0/reg_bit_2/A_ gnd! 4.813080fF
C155 O4 gnd! 42.072070fF
C156 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_0_n21# gnd! 4.047120fF
C157 rf_dec_0/register_file_0/reg_bit_3/write_driver_0/a_7_n15# gnd! 4.037310fF
C158 rf_dec_0/register_file_0/reg_bit_3/Bl_ gnd! 25.465375fF
C159 rf_dec_0/register_file_0/reg_bit_3/Bl gnd! 26.168096fF
C160 rf_dec_0/register_file_0/reg_bit_3/A_ gnd! 4.813080fF
C161 O3 gnd! 40.250648fF
C162 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_0_n21# gnd! 4.047120fF
C163 rf_dec_0/register_file_0/reg_bit_4/write_driver_0/a_7_n15# gnd! 4.037310fF
C164 rf_dec_0/register_file_0/reg_bit_4/Bl_ gnd! 25.465375fF
C165 rf_dec_0/register_file_0/reg_bit_4/Bl gnd! 26.168096fF
C166 rf_dec_0/register_file_0/reg_bit_4/A_ gnd! 4.813080fF
C167 O2 gnd! 45.451191fF
C168 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_0_n21# gnd! 4.047120fF
C169 rf_dec_0/register_file_0/reg_bit_5/write_driver_0/a_7_n15# gnd! 4.037310fF
C170 rf_dec_0/register_file_0/reg_bit_5/Bl_ gnd! 25.465375fF
C171 rf_dec_0/register_file_0/reg_bit_5/Bl gnd! 26.168096fF
C172 rf_dec_0/register_file_0/reg_bit_5/A_ gnd! 4.813080fF
C173 O1 gnd! 43.838570fF
C174 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_0_n21# gnd! 4.047120fF
C175 rf_dec_0/register_file_0/reg_bit_6/write_driver_0/a_7_n15# gnd! 4.037310fF
C176 rf_dec_0/register_file_0/reg_bit_6/Bl_ gnd! 25.465375fF
C177 rf_dec_0/register_file_0/reg_bit_6/Bl gnd! 26.168096fF
C178 rf_dec_0/register_file_0/reg_bit_6/A_ gnd! 4.813080fF
C179 REG_Pc gnd! 17.246439fF
C180 O0 gnd! 47.802633fF
C181 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_0_n21# gnd! 4.047120fF
C182 rf_dec_0/register_file_0/reg_bit_7/write_driver_0/a_7_n15# gnd! 4.037310fF
C183 rf_dec_0/register_file_0/reg_bit_7/Bl_ gnd! 25.465375fF
C184 rf_dec_0/Bl gnd! 26.168096fF
C185 REG_As gnd! 118.648586fF
C186 rf_dec_0/register_file_0/reg_bit_7/A_ gnd! 4.813080fF
C187 alu_0/fa_sub_0/mux21_0/a_n3_n57# gnd! 5.635680fF
C188 alu_0/fa_sub_0/fa_0/B gnd! 13.428090fF
C189 alu_0/fa_sub_0/xor2_0/a_17_6# gnd! 5.648760fF
C190 alu_0/fa_sub_0/xor2_0/a_28_44# gnd! 4.901310fF
C191 alu_0/fa_sub_0/xor2_0/A gnd! 7.000920fF
C192 S7 gnd! 33.556477fF
C193 S8 gnd! 5.777640fF
C194 alu_0/fa_sub_0/fa_0/a_67_19# gnd! 5.327280fF
C195 I7 gnd! 17.232059fF
C196 alu_0/fa_sub_0/fa_0/a_n14_38# gnd! 7.690680fF
C197 alu_0/fa_sub_1/mux21_0/a_n3_n57# gnd! 5.635680fF
C198 alu_0/fa_sub_1/fa_0/B gnd! 13.428090fF
C199 alu_0/fa_sub_1/xor2_0/a_17_6# gnd! 5.648760fF
C200 alu_0/fa_sub_1/xor2_0/a_28_44# gnd! 4.901310fF
C201 alu_0/fa_sub_1/xor2_0/A gnd! 7.000920fF
C202 S6 gnd! 29.260609fF
C203 alu_0/fa_sub_0/fa_0/Ci gnd! 11.026170fF
C204 alu_0/fa_sub_1/fa_0/a_67_19# gnd! 5.327280fF
C205 I6 gnd! 18.171939fF
C206 alu_0/fa_sub_1/fa_0/a_n14_38# gnd! 7.690680fF
C207 alu_0/fa_sub_2/mux21_0/a_n3_n57# gnd! 5.635680fF
C208 alu_0/fa_sub_2/fa_0/B gnd! 13.428090fF
C209 alu_0/fa_sub_2/xor2_0/a_17_6# gnd! 5.648760fF
C210 alu_0/fa_sub_2/xor2_0/a_28_44# gnd! 4.901310fF
C211 alu_0/fa_sub_2/xor2_0/A gnd! 7.000920fF
C212 S5 gnd! 21.260730fF
C213 alu_0/fa_sub_1/fa_0/Ci gnd! 11.026170fF
C214 alu_0/fa_sub_2/fa_0/a_67_19# gnd! 5.327280fF
C215 I5 gnd! 27.705158fF
C216 alu_0/fa_sub_2/fa_0/a_n14_38# gnd! 7.690680fF
C217 alu_0/fa_sub_3/mux21_0/a_n3_n57# gnd! 5.635680fF
C218 alu_0/fa_sub_3/fa_0/B gnd! 13.428090fF
C219 alu_0/fa_sub_3/xor2_0/a_17_6# gnd! 5.648760fF
C220 alu_0/fa_sub_3/xor2_0/a_28_44# gnd! 4.901310fF
C221 alu_0/fa_sub_3/xor2_0/A gnd! 7.000920fF
C222 S4 gnd! 14.244292fF
C223 alu_0/fa_sub_2/fa_0/Ci gnd! 11.026170fF
C224 alu_0/fa_sub_3/fa_0/a_67_19# gnd! 5.327280fF
C225 I4 gnd! 34.427734fF
C226 alu_0/fa_sub_3/fa_0/a_n14_38# gnd! 7.690680fF
C227 alu_0/fa_sub_4/mux21_0/a_n3_n57# gnd! 5.635680fF
C228 alu_0/fa_sub_4/fa_0/B gnd! 13.428090fF
C229 alu_0/fa_sub_4/xor2_0/a_17_6# gnd! 5.648760fF
C230 alu_0/fa_sub_4/xor2_0/a_28_44# gnd! 4.901310fF
C231 alu_0/fa_sub_4/xor2_0/A gnd! 7.000920fF
C232 S3 gnd! 9.157930fF
C233 alu_0/fa_sub_3/fa_0/Ci gnd! 11.026170fF
C234 alu_0/fa_sub_4/fa_0/a_67_19# gnd! 5.327280fF
C235 I3 gnd! 41.037805fF
C236 alu_0/fa_sub_4/fa_0/a_n14_38# gnd! 7.690680fF
C237 alu_0/fa_sub_5/mux21_0/a_n3_n57# gnd! 5.635680fF
C238 alu_0/fa_sub_5/fa_0/B gnd! 13.428090fF
C239 alu_0/fa_sub_5/xor2_0/a_17_6# gnd! 5.648760fF
C240 alu_0/fa_sub_5/xor2_0/a_28_44# gnd! 4.901310fF
C241 alu_0/fa_sub_5/xor2_0/A gnd! 7.000920fF
C242 S2 gnd! 4.951800fF
C243 alu_0/fa_sub_4/fa_0/Ci gnd! 11.026170fF
C244 alu_0/fa_sub_5/fa_0/a_67_19# gnd! 5.327280fF
C245 I2 gnd! 56.766754fF
C246 alu_0/fa_sub_5/fa_0/a_n14_38# gnd! 7.690680fF
C247 alu_0/fa_sub_6/mux21_0/a_n3_n57# gnd! 5.635680fF
C248 alu_0/fa_sub_6/fa_0/B gnd! 13.428090fF
C249 alu_0/fa_sub_6/xor2_0/a_17_6# gnd! 5.648760fF
C250 alu_0/fa_sub_6/xor2_0/a_28_44# gnd! 4.901310fF
C251 alu_0/fa_sub_6/xor2_0/A gnd! 7.000920fF
C252 S1 gnd! 8.117890fF
C253 alu_0/fa_sub_5/fa_0/Ci gnd! 11.026170fF
C254 alu_0/fa_sub_6/fa_0/a_67_19# gnd! 5.327280fF
C255 I1 gnd! 71.424406fF
C256 alu_0/fa_sub_6/fa_0/a_n14_38# gnd! 7.690680fF
C257 alu_0/fa_sub_7/mux21_0/a_n3_n57# gnd! 5.635680fF
C258 Select gnd! 32.846281fF
C259 alu_0/fa_sub_7/fa_0/B gnd! 13.428090fF
C260 alu_0/fa_sub_7/xor2_0/a_17_6# gnd! 5.648760fF
C261 alu_0/fa_sub_7/xor2_0/a_28_44# gnd! 4.901310fF
C262 alu_0/fa_sub_7/xor2_0/A gnd! 7.000920fF
C263 alu_0/fa_sub_6/fa_0/Ci gnd! 11.026170fF
C264 alu_0/fa_sub_7/fa_0/a_67_19# gnd! 5.327280fF
C265 I0 gnd! 42.408961fF
C266 alu_0/fa_sub_7/fa_0/a_n14_38# gnd! 7.690680fF
C267 alu_reg_0/reg_bit1_0/write_driver_0/a_0_n21# gnd! 4.971780fF
C268 alu_reg_0/reg_bit1_0/write_driver_0/a_7_n15# gnd! 4.683090fF
C269 alu_reg_0/reg_bit1_0/Bl_ gnd! 9.446100fF
C270 alu_reg_0/reg_bit1_0/Bl gnd! 10.167900fF
C271 alu_reg_0/reg_bit1_0/A_ gnd! 4.109760fF
C272 alu_reg_0/reg_bit1_1/write_driver_0/a_0_n21# gnd! 4.971780fF
C273 alu_reg_0/reg_bit1_1/write_driver_0/a_7_n15# gnd! 4.683090fF
C274 alu_reg_0/reg_bit1_1/Bl_ gnd! 9.446100fF
C275 alu_reg_0/reg_bit1_1/Bl gnd! 10.167900fF
C276 alu_reg_0/reg_bit1_1/A_ gnd! 4.109760fF
C277 alu_reg_0/reg_bit1_2/write_driver_0/a_0_n21# gnd! 4.971780fF
C278 alu_reg_0/reg_bit1_2/write_driver_0/a_7_n15# gnd! 4.683090fF
C279 alu_reg_0/reg_bit1_2/Bl_ gnd! 9.446100fF
C280 alu_reg_0/reg_bit1_2/Bl gnd! 10.167900fF
C281 alu_reg_0/reg_bit1_2/A_ gnd! 4.109760fF
C282 alu_reg_0/reg_bit1_3/write_driver_0/a_0_n21# gnd! 4.971780fF
C283 alu_reg_0/reg_bit1_3/write_driver_0/a_7_n15# gnd! 4.683090fF
C284 alu_reg_0/reg_bit1_3/Bl_ gnd! 9.446100fF
C285 alu_reg_0/reg_bit1_3/Bl gnd! 10.167900fF
C286 alu_reg_0/reg_bit1_3/A_ gnd! 4.109760fF
C287 alu_reg_0/reg_bit1_4/write_driver_0/a_0_n21# gnd! 4.971780fF
C288 alu_reg_0/reg_bit1_4/write_driver_0/a_7_n15# gnd! 4.683090fF
C289 alu_reg_0/reg_bit1_4/Bl_ gnd! 9.446100fF
C290 alu_reg_0/reg_bit1_4/Bl gnd! 10.167900fF
C291 alu_reg_0/reg_bit1_4/A_ gnd! 4.109760fF
C292 alu_reg_0/reg_bit1_5/write_driver_0/a_0_n21# gnd! 4.971780fF
C293 alu_reg_0/reg_bit1_5/write_driver_0/a_7_n15# gnd! 4.683090fF
C294 alu_reg_0/reg_bit1_5/Bl_ gnd! 9.446100fF
C295 alu_reg_0/reg_bit1_5/Bl gnd! 10.167900fF
C296 alu_reg_0/reg_bit1_5/A_ gnd! 4.109760fF
C297 alu_reg_0/reg_bit1_6/write_driver_0/a_0_n21# gnd! 4.971780fF
C298 alu_reg_0/reg_bit1_6/write_driver_0/a_7_n15# gnd! 4.683090fF
C299 alu_reg_0/reg_bit1_6/Bl_ gnd! 9.446100fF
C300 alu_reg_0/reg_bit1_6/Bl gnd! 10.167900fF
C301 alu_reg_0/reg_bit1_6/A_ gnd! 4.109760fF
C302 alu_reg_0/reg_bit1_7/write_driver_0/a_0_n21# gnd! 4.971780fF
C303 alu_reg_0/reg_bit1_7/write_driver_0/a_7_n15# gnd! 4.683090fF
C304 alu_reg_0/reg_bit1_7/Bl_ gnd! 9.446100fF
C305 alu_reg_0/reg_bit1_7/Bl gnd! 10.167900fF
C306 alu_reg_0/reg_bit1_7/A_ gnd! 4.109760fF


*********************************************
* Transistor Models
*
* Those are given, dont touch these
*********************************************

* These parameters are extracted from the process corner wafers that are provided by AMI
* In this document slow-fast means: NMOS device slow and PMOS device fast.
* The fast-slow corner means: NMOS fast and PMOS slow. 
* DATE: May 22/02
* Tech: AMI_C5N
* LOT: T22Y_TT (typical)                  WAF: 3104
* Temperature_parameters=Optimized 
.MODEL CMOSNTT NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6696061
+K1      = 0.8351612      K2      = -0.0839158     K3      = 23.1023856
+K3B     = -7.6841108     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.9047241      DVT1    = 0.4302695      DVT2    = -0.134857
+U0      = 458.439679     UA      = 1E-13          UB      = 1.485499E-18
+UC      = 1.629939E-11   VSAT    = 1.643993E5     A0      = 0.6103537
+AGS     = 0.1194608      B0      = 2.674756E-6    B1      = 5E-6
+KETA    = -2.640681E-3   A1      = 8.219585E-5    A2      = 0.3564792
+RDSW    = 1.387108E3     PRWG    = 0.0299916      PRWB    = 0.0363981
+WR      = 1              WINT    = 2.472348E-7    LINT    = 3.597605E-8
+XL      = 0              XW      = 0              DWG     = -1.287163E-8
+DWB     = 5.306586E-8    VOFF    = 0              NFACTOR = 0.8365585
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0246738      ETAB    = -1.406123E-3
+DSUB    = 0.2543458      PCLM    = 2.5945188      PDIBLC1 = -0.4282336
+PDIBLC2 = 2.311743E-3    PDIBLCB = -0.0272914     DROUT   = 0.7283566
+PSCBE1  = 5.598623E8     PSCBE2  = 5.461645E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.8           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2E-10          CGSO    = 2E-10          CGBO    = 1E-9
+CJ      = 4.197772E-4    PB      = 0.99           MJ      = 0.4515044
+CJSW    = 3.242724E-10   PBSW    = 0.1            MJSW    = 0.1153991
+CJSWG   = 1.64E-10       PBSWG   = 0.1            MJSWG   = 0.1153991
+CF      = 0              PVTH0   = 0.0585501      PRDSW   = 133.285505
+PK2     = -0.0299638     WKETA   = -0.0248758     LKETA   = 1.173187E-3
+AF      = 1              KF      = 0)
*
.MODEL CMOSPTT PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9214347
+K1      = 0.5553722      K2      = 8.763328E-3    K3      = 6.3063558
+K3B     = -0.6487362     W0      = 1.280703E-8    NLX     = 2.593997E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.5131165      DVT1    = 0.5480536      DVT2    = -0.1186489
+U0      = 212.0166131    UA      = 2.807115E-9    UB      = 1E-21
+UC      = -5.82128E-11   VSAT    = 1.713601E5     A0      = 0.8430019
+AGS     = 0.1328608      B0      = 7.117912E-7    B1      = 5E-6
+KETA    = -3.674859E-3   A1      = 4.77502E-5     A2      = 0.3
+RDSW    = 2.837206E3     PRWG    = -0.0363908     PRWB    = -1.016722E-5
+WR      = 1              WINT    = 2.838038E-7    LINT    = 5.528807E-8
+XL      = 0              XW      = 0              DWG     = -1.606385E-8
+DWB     = 2.266386E-8    VOFF    = -0.0558512     NFACTOR = 0.9342488
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3251882      ETAB    = -0.0580325
+DSUB    = 1              PCLM    = 2.2409567      PDIBLC1 = 0.0411445
+PDIBLC2 = 3.355575E-3    PDIBLCB = -0.0551797     DROUT   = 0.2036901
+PSCBE1  = 6.44809E9      PSCBE2  = 6.300848E-10   PVAG    = 0
+DELTA   = 0.01           RSH     = 101.6          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.9E-10        CGSO    = 2.9E-10        CGBO    = 1E-9
+CJ      = 7.235528E-4    PB      = 0.9527355      MJ      = 0.4955293
+CJSW    = 2.692786E-10   PBSW    = 0.99           MJSW    = 0.2958392
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.2958392
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 5.292165E-3    LKETA   = -4.205905E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 23/02
* Tech: AMI_C5N
* LOT: T22Y_SS (slow-slow)                  WAF: 3102
* Temperature_parameters=Optimized 
.MODEL CMOSNSS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.7087481
+K1      = 0.9382905      K2      = -0.1120562     K3      = 23.0789213
+K3B     = -7.3398981     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3388333      DVT1    = 0.4283914      DVT2    = -0.0952143
+U0      = 459.674806     UA      = 1E-13          UB      = 1.503507E-18
+UC      = 1.325863E-11   VSAT    = 1.682969E5     A0      = 0.4784067
+AGS     = 0.0995613      B0      = 2.644452E-6    B1      = 5E-6
+KETA    = -5.808373E-3   A1      = 1.027068E-4    A2      = 0.3400289
+RDSW    = 1.329687E3     PRWG    = 0.0432392      PRWB    = 0.0149808
+WR      = 1              WINT    = 2.420178E-7    LINT    = 3.239617E-8
+XL      = 0              XW      = 0              DWG     = -1.396728E-8
+DWB     = 5.6316E-8      VOFF    = -2.57933E-3    NFACTOR = 0.8759425
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0152264      ETAB    = -1.058244E-3
+DSUB    = 0.2005917      PCLM    = 2.6613926      PDIBLC1 = -0.7606454
+PDIBLC2 = 2.593415E-3    PDIBLCB = -0.0326937     DROUT   = 0.6688818
+PSCBE1  = 5.85807E8      PSCBE2  = 7.988657E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.9           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.02E-10       CGSO    = 2.02E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0681426      PRDSW   = 188.2442761
+PK2     = -0.0295712     WKETA   = -0.0264969     LKETA   = -2.950307E-5
+AF      = 1              KF      = 0)
*
.MODEL CMOSPSS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9223355
+K1      = 0.5769702      K2      = 9.039555E-3    K3      = 6.34861
+K3B     = -0.6383676     W0      = 1E-8           NLX     = 4.747861E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4578035      DVT1    = 0.576459       DVT2    = -0.1206691
+U0      = 211.8308394    UA      = 2.824327E-9    UB      = 1E-21
+UC      = -5.66493E-11   VSAT    = 1.622935E5     A0      = 0.8712138
+AGS     = 0.1383793      B0      = 7.726776E-7    B1      = 5E-6
+KETA    = -5.205201E-3   A1      = 2.378013E-5    A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0454944     PRWB    = -2.13823E-4
+WR      = 1              WINT    = 2.849786E-7    LINT    = 5.529217E-8
+XL      = 0              XW      = 0              DWG     = -1.840088E-8
+DWB     = 2.185555E-8    VOFF    = -0.0684347     NFACTOR = 0.9119466
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3751245      ETAB    = -0.0827039
+DSUB    = 1              PCLM    = 2.2966371      PDIBLC1 = 0.0365228
+PDIBLC2 = 3.733251E-3    PDIBLCB = -0.0621219     DROUT   = 0.2123397
+PSCBE1  = 7.499863E9     PSCBE2  = 7.328296E-10   PVAG    = 4.584372E-6
+DELTA   = 0.01           RSH     = 101.9          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.84E-10       CGSO    = 2.84E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 4.75772E-3     LKETA   = -6.715425E-3
+AF      = 1              KF      = 0)
*
* DATE: May 22/02
* Tech: AMI_C5N
* LOT: T22Y_FF (fast-fast)                  WAF: 3110
* Temperature_parameters=Optimized 
.MODEL CMOSNFF NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6252608
+K1      = 0.8530381      K2      = -0.0937042     K3      = 25.5736581
+K3B     = -7.2969383     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.4153341      DVT1    = 0.4318353      DVT2    = -0.1001188
+U0      = 461.2276323    UA      = 1E-13          UB      = 1.46812E-18
+UC      = 1.421961E-11   VSAT    = 1.555424E5     A0      = 0.7155223
+AGS     = 0.1483817      B0      = 2.54418E-6     B1      = 5E-6
+KETA    = 1.388284E-5    A1      = 7.294903E-5    A2      = 0.3921052
+RDSW    = 1.305357E3     PRWG    = 0.0488517      PRWB    = 0.0366783
+WR      = 1              WINT    = 2.274256E-7    LINT    = 3.776271E-8
+XL      = 0              XW      = 0              DWG     = -8.845179E-9
+DWB     = 6.105959E-8    VOFF    = 0              NFACTOR = 0.5636274
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0345642      ETAB    = -1.428288E-3
+DSUB    = 0.3127341      PCLM    = 2.6236271      PDIBLC1 = -0.3319738
+PDIBLC2 = 2.390366E-3    PDIBLCB = -0.0300257     DROUT   = 0.6600306
+PSCBE1  = 5.488078E8     PSCBE2  = 4.431797E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.8           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 1.98E-10       CGSO    = 1.98E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.1033668      PRDSW   = 59.9594347
+PK2     = -0.0304166     WKETA   = -0.0144288     LKETA   = 3.115505E-3
+AF      = 1              KF      = 0)
*
.MODEL CMOSPFF PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.8880096
+K1      = 0.533922       K2      = 3.259424E-3    K3      = 4.9517158
+K3B     = -0.6918832     W0      = 1.515912E-8    NLX     = 3.554945E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4926947      DVT1    = 0.530833       DVT2    = -0.1185572
+U0      = 211.6791804    UA      = 2.785001E-9    UB      = 1E-21
+UC      = -5.76365E-11   VSAT    = 1.732495E5     A0      = 0.9378784
+AGS     = 0.1630399      B0      = 7.147395E-7    B1      = 5E-6
+KETA    = 1.410441E-4    A1      = 0              A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0490272     PRWB    = 8.254155E-5
+WR      = 1              WINT    = 2.696991E-7    LINT    = 6.103973E-8
+XL      = 0              XW      = 0              DWG     = -1.293462E-8
+DWB     = 2.202201E-8    VOFF    = -0.0500647     NFACTOR = 0.8235545
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.4342722      ETAB    = -6.780063E-3
+DSUB    = 1              PCLM    = 2.3221049      PDIBLC1 = 0.036845
+PDIBLC2 = 3.86901E-3     PDIBLCB = -0.0457025     DROUT   = 0.1909189
+PSCBE1  = 1.678442E10    PSCBE2  = 1.640115E-9    PVAG    = 0.0133488
+DELTA   = 0.01           RSH     = 101.7          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.75E-10       CGSO    = 2.75E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 5.10041E-3     LKETA   = -1.725699E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 28/02
* Tech: AMI_C5N
* LOT: T22Y_SF (slow-fast)                  WAF: 3108
* Temperature_parameters=Optimized 
.MODEL CMOSNSF NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.7149035
+K1      = 0.9483936      K2      = -0.1143426     K3      = 22.9362167
+K3B     = -7.5062363     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3919449      DVT1    = 0.4489453      DVT2    = -0.1041249
+U0      = 457.716722     UA      = 1E-13          UB      = 1.372758E-18
+UC      = 9.187767E-12   VSAT    = 1.587379E5     A0      = 0.4423616
+AGS     = 0.074408       B0      = 2.495758E-6    B1      = 5E-6
+KETA    = -7.852725E-3   A1      = 0              A2      = 0.3722219
+RDSW    = 1.37701E3      PRWG    = 0.0473261      PRWB    = 0.0143246
+WR      = 1              WINT    = 2.276625E-7    LINT    = 3.643153E-8
+XL      = 0              XW      = 0              DWG     = -8.492651E-9
+DWB     = 5.745769E-8    VOFF    = -1.122941E-3   NFACTOR = 0.9488846
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0194621      ETAB    = -1.316507E-3
+DSUB    = 0.2373912      PCLM    = 2.609637       PDIBLC1 = -0.2869359
+PDIBLC2 = 2.596336E-3    PDIBLCB = -9.96922E-3    DROUT   = 0.6175652
+PSCBE1  = 5.8967E8       PSCBE2  = 8.951955E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.7           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.03E-10       CGSO    = 2.03E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0690695      PRDSW   = 181.3444668
+PK2     = -0.0304429     WKETA   = 0.0420944      LKETA   = -3.044755E-3 
+AF      = 1              KF      = 0)
*
.MODEL CMOSPSF PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.8558405
+K1      = 0.5644444      K2      = 6.387376E-3    K3      = 6.0462612
+K3B     = -0.5998096     W0      = 1E-8           NLX     = 3.340021E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4979627      DVT1    = 0.5476217      DVT2    = -0.1143472
+U0      = 211.0603347    UA      = 2.770099E-9    UB      = 1.044234E-21
+UC      = -5.9315E-11    VSAT    = 1.779657E5     A0      = 1.1297757
+AGS     = 0.172519       B0      = 6.127953E-7    B1      = 5E-6
+KETA    = -1.991554E-3   A1      = 0              A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0477698     PRWB    = -1.197112E-4
+WR      = 1              WINT    = 2.778374E-7    LINT    = 5.81705E-8
+XL      = 0              XW      = 0              DWG     = -1.563705E-8
+DWB     = 2.218513E-8    VOFF    = -0.0660365     NFACTOR = 0.9061795
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1521419      ETAB    = -0.0473117
+DSUB    = 1              PCLM    = 2.3170883      PDIBLC1 = 0.0640318
+PDIBLC2 = 4.224165E-3    PDIBLCB = -0.0417139     DROUT   = 0.2703555
+PSCBE1  = 5.427801E9     PSCBE2  = 5.303858E-10   PVAG    = 0
+DELTA   = 0.01           RSH     = 102.2          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.64E-10       CGSO    = 2.64E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 3.730632E-3    LKETA   = -4.016397E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 24/02
* Tech: AMI_C5N
* LOT: T22Y_FS (fast-slow)                  WAF: 3103
* Temperature_parameters=Optimized 
.MODEL CMOSNFS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6406873
+K1      = 0.8993265      K2      = -0.1056377     K3      = 21.3163919
+K3B     = -7.1608652     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.5203013      DVT1    = 0.4082348      DVT2    = -0.0884394
+U0      = 459.8817656    UA      = 1E-13          UB      = 1.519768E-18
+UC      = 1.390305E-11   VSAT    = 1.618085E5     A0      = 0.6561988
+AGS     = 0.1483929      B0      = 2.633747E-6    B1      = 5E-6
+KETA    = 1.06352E-3     A1      = 7.568286E-5    A2      = 0.3677153
+RDSW    = 1.235008E3     PRWG    = 0.0513137      PRWB    = 0.0510984
+WR      = 1              WINT    = 2.396297E-7    LINT    = 3.585449E-8
+XL      = 0              XW      = 0              DWG     = -1.245253E-8
+DWB     = 5.532278E-8    VOFF    = 0              NFACTOR = 0.6559298
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0330898      ETAB    = -1.406156E-3
+DSUB    = 0.2997589      PCLM    = 2.6313228      PDIBLC1 = -0.40275
+PDIBLC2 = 2.205592E-3    PDIBLCB = -0.0272899     DROUT   = 0.7201569
+PSCBE1  = 5.601647E8     PSCBE2  = 5.450628E-5    PVAG    = 7.40725E-3
+DELTA   = 0.01           RSH     = 81.2           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.03E-10       CGSO    = 2.03E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0766435      PRDSW   = 163.0361088
+PK2     = -0.0297388     WKETA   = -0.0214699     LKETA   = -2.14921E-5 
+AF      = 1              KF      = 0)
*
.MODEL CMOSPFS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -1.0173478
+K1      = 0.5658287      K2      = 0.0116517      K3      = 10.5698978
+K3B     = -0.7608774     W0      = 1E-8           NLX     = 9.01509E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3035484      DVT1    = 0.5614757      DVT2    = -0.0733879
+U0      = 213.2201651    UA      = 2.872001E-9    UB      = 1.05947E-21
+UC      = -5.43332E-11   VSAT    = 1.545629E5     A0      = 0.4566597
+AGS     = 0              B0      = 6.789661E-7    B1      = 5E-6
+KETA    = -8.389653E-3   A1      = 4.693067E-8    A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.046965      PRWB    = -6.108168E-5
+WR      = 1              WINT    = 2.938786E-7    LINT    = 5.685662E-8
+XL      = 0              XW      = 0              DWG     = -1.995328E-8
+DWB     = 2.020066E-8    VOFF    = -0.0719834     NFACTOR = 0.7501867
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1503769      ETAB    = -0.0623126
+DSUB    = 0.8623589      PCLM    = 2.2059151      PDIBLC1 = 0.0239419
+PDIBLC2 = 3.052934E-3    PDIBLCB = -0.0972847     DROUT   = 0.1509141
+PSCBE1  = 5.116843E9     PSCBE2  = 5E-10          PVAG    = 0
+DELTA   = 0.01           RSH     = 101.5          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 3.18E-10       CGSO    = 3.18E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 2.574681E-3    LKETA   = -7.296621E-3 
+AF      = 1              KF      = 0)
*

**************************************************************
* Analysis type
*
* .DC voltagesource startvoltage stopvoltage stepsize [source start stop step ...]
* .TRAN stoptime stepsize
*
* .DC is a dc-sweep (waveform over voltage) (can have more than one, as shown above)
* .TRAN is a transient analysis (waveform over time)
**************************************************************
.dc VA 0V +5V 100mV
.tran .05n 80n 

**************************************************************
*  Define Voltages for Power/Ground
**************************************************************
.param vddp = 5.0
.param SUPPLY = '1.0*vddp'
.temp 70
VDD vdd 0 DC 'SUPPLY'

**************************************************************
*  Define .measure statements (needs to be modified for your design
**************************************************************

 .param tstop = 80n
 .param tdval = 0n
  
 .meas tran vmax max v(Out) from=tdval to=tstop
 .meas tran vmin min v(Out) from=tdval to=tstop
 .meas tran trise trig v(Out) val='vmin+0.1*vmax'  td=tdval
 +      rise=1 targ  v(Out) val='0.9*vmax' rise=1
 .meas tran  tfall trig v(Out) val='0.9*vmax' td=tdval
 +      fall=2 targ  v(Out) val='vmin+0.1*vmax' fall=2
 .measure tran tplh   trig v(A) val='0.5*vddp' rise=1
 +              targ v(Out) val='0.5*vddp' rise=1
 .measure tran tphl  trig v(A) val='0.5*vddp' fall=1
 +              targ v(Out) val='0.5*vddp' fall=1
 .measure avg_delay param='(tphl - tplh)/2'
 .measure tran avgpower avg power from=tdval to=tstop
 .measure tran peakpwr max power from=tdval to=tstop

**************************************************************
* Final options
* .probe tells which waveforms to save
* .print prints given waveforms in tabulated form
**************************************************************
.print DC V(Select) V(Subtract) V(ALU_PC) V(ALU_DS) V(ALU_AS) V(REG_PC) V(REG_DS) V(REG_AS) V(A2) V(A1) V(A0) V(D2) V(D1) V(D0) V(I7) V(I6) V(I5) V(I4) V(I3) V(I2) V(I1) V(I0) V(Ad7) V(Ad6) V(Ad5) V(Ad4) V(Ad3) V(Ad2) V(Ad1) V(Ad0) V(O7) V(O6) V(O5) V(O4) V(O3) V(O2) V(O1) V(O0) V(S7) V(S6) V(S5) V(S4) V(S3) V(S2) V(S1) V(S0) V(En0) V(En1) V(En2) V(En3) V(En4) V(En5) V(En6) V(En7) 
.print tran V(Select) V(Subtract) V(ALU_PC) V(ALU_DS) V(ALU_AS) V(REG_PC) V(REG_DS) V(REG_AS) V(A2) V(A1) V(A0) V(D2) V(D1) V(D0) V(I7) V(I6) V(I5) V(I4) V(I3) V(I2) V(I1) V(I0) V(Ad7) V(Ad6) V(Ad5) V(Ad4) V(Ad3) V(Ad2) V(Ad1) V(Ad0) V(O7) V(O6) V(O5) V(O4) V(O3) V(O2) V(O1) V(O0) V(S7) V(S6) V(S5) V(S4) V(S3) V(S2) V(S1) V(S0) V(En0) V(En1) V(En2) V(En3) V(En4) V(En5) V(En6) V(En7) 
.probe V(Select) V(Subtract) V(ALU_PC) V(ALU_DS) V(ALU_AS) V(REG_PC) V(REG_DS) V(REG_AS) V(A2) V(A1) V(A0) V(D2) V(D1) V(D0) V(I7) V(I6) V(I5) V(I4) V(I3) V(I2) V(I1) V(I0) V(Ad7) V(Ad6) V(Ad5) V(Ad4) V(Ad3) V(Ad2) V(Ad1) V(Ad0) V(O7) V(O6) V(O5) V(O4) V(O3) V(O2) V(O1) V(O0) V(S7) V(S6) V(S5) V(S4) V(S3) V(S2) V(S1) V(S0) V(En0) V(En1) V(En2) V(En3) V(En4) V(En5) V(En6) V(En7) 
.op
.options probe post measout captab
.end
