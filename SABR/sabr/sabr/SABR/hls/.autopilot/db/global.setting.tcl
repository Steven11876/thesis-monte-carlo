
set TopModule "SABR"
set ClockPeriod 8
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix SABR_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7s15:-cpga196:-2
set SourceFiles {sc {} c C:/Users/steve/thesis-monte-carlo/SABR/test.c}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {}
set TBFiles {verilog {C:/Users/steve/thesis-monte-carlo/SABR/test_func.c C:/Users/steve/thesis-monte-carlo/SABR/out.golden.dat C:/Users/steve/thesis-monte-carlo/SABR/in.dat} bc {C:/Users/steve/thesis-monte-carlo/SABR/test_func.c C:/Users/steve/thesis-monte-carlo/SABR/out.golden.dat C:/Users/steve/thesis-monte-carlo/SABR/in.dat} vhdl {C:/Users/steve/thesis-monte-carlo/SABR/test_func.c C:/Users/steve/thesis-monte-carlo/SABR/out.golden.dat C:/Users/steve/thesis-monte-carlo/SABR/in.dat} sc {C:/Users/steve/thesis-monte-carlo/SABR/test_func.c C:/Users/steve/thesis-monte-carlo/SABR/out.golden.dat C:/Users/steve/thesis-monte-carlo/SABR/in.dat} cas {C:/Users/steve/thesis-monte-carlo/SABR/test_func.c C:/Users/steve/thesis-monte-carlo/SABR/out.golden.dat C:/Users/steve/thesis-monte-carlo/SABR/in.dat} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/spartan7/spartan7}}}
set HPFPO 0
