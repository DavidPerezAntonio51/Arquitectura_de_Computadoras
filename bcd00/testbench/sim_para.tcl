lappend auto_path "D:/Programas/lscc/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {testbench}
set ::bali::simulation::Para(PROJECTPATH) {D:/GIT/Arquitectura_de_Computadoras/bcd00}
set ::bali::simulation::Para(FILELIST) {"D:/GIT/Arquitectura_de_Computadoras/bcd00/packagebcd00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/mux00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/coderNibbles00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/contring00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/memProg00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/ac1200.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/ac800.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/contIter00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/checkCode00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/pc00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/uc00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/shift12s00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/shift8s00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/compadd00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/sust00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/leedato00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/init00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/bcd00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/bcd00/testbenc.vhdl" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {testbenc}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {D:/Programas/lscc/diamond/3.12}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
