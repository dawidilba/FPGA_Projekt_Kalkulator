#############################################################
# vsimsa environment configuration
set dsn $curdir
log $dsn/log/vsimsa.log
@echo
@echo #################### Starting C Code Debug Session ######################
cd $dsn/src
amap TutorVHDL $dsn/TutorVHDL/TutorVHDL.lib
set worklib TutorVHDL
# simulation
asim -callbacks -O5 +access +r +m+testbench_for_tutorvhdl testbench_for_tutorvhdl
run -all
#############################################################