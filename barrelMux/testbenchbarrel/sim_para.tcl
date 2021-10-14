lappend auto_path "D:/Programas/lscc/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {testbenchbarrel}
set ::bali::simulation::Para(PROJECTPATH) {D:/GIT/Arquitectura_de_Computadoras/barrelMux}
set ::bali::simulation::Para(FILELIST) {"D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/packagebarrelMux.vhdl" "D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/barrelrotationLR.vhdl" "D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/barrelrotationRL.vhdl" "D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/barrelshiftLR.vhdl" "D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/barrelshiftRL.vhdl" "D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/barrelMux00.vhdl" "D:/GIT/Arquitectura_de_Computadoras/barrelMux/testbenchbarrel/testbenchbarrelMux.vhdl" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {testbenchbarrelMux}
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
