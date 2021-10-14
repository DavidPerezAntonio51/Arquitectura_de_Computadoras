lappend auto_path "D:/Programas/lscc/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {testbenchword}
set ::bali::simulation::Para(PROJECTPATH) {D:/GIT/Arquitectura_de_Computadoras/word00}
set ::bali::simulation::Para(FILELIST) {"D:/GIT/Arquitectura_de_Computadoras/word00/testbenchword/packageword00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/word00/testbenchword/coder00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/word00/testbenchword/contring00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/word00/testbenchword/word00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/word00/testbenchword/testbenchword00.vhdl" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {testbenchword00}
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
