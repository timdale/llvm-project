add_llvm_component_group(Dale)

set(LLVM_TARGET_DEFINITIONS Dale.td)

tablegen(LLVM DaleGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM DaleGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM DaleGenCompressInstEmitter.inc -gen-compress-inst-emitter)
tablegen(LLVM DaleGenMacroFusion.inc -gen-macro-fusion-pred)
tablegen(LLVM DaleGenDAGISel.inc -gen-dag-isel)
tablegen(LLVM DaleGenDisassemblerTables.inc -gen-disassembler)
tablegen(LLVM DaleGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM DaleGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM DaleGenMCPseudoLowering.inc -gen-pseudo-lowering)
tablegen(LLVM DaleGenRegisterBank.inc -gen-register-bank)
tablegen(LLVM DaleGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM DaleGenSearchableTables.inc -gen-searchable-tables)
tablegen(LLVM DaleGenSubtargetInfo.inc -gen-subtarget)
tablegen(LLVM DaleGenExegesis.inc -gen-exegesis)

set(LLVM_TARGET_DEFINITIONS DaleGISel.td)
tablegen(LLVM DaleGenGlobalISel.inc -gen-global-isel)
tablegen(LLVM DaleGenO0PreLegalizeGICombiner.inc -gen-global-isel-combiner
              -combiners="DaleO0PreLegalizerCombiner")
tablegen(LLVM DaleGenPreLegalizeGICombiner.inc -gen-global-isel-combiner
              -combiners="DalePreLegalizerCombiner")
tablegen(LLVM DaleGenPostLegalizeGICombiner.inc -gen-global-isel-combiner
              -combiners="DalePostLegalizerCombiner")

add_public_tablegen_target(DaleCommonTableGen)

add_llvm_target(DaleCodeGen
  DaleAsmPrinter.cpp
  DaleCallingConv.cpp
  DaleCodeGenPrepare.cpp
  DaleConstantPoolValue.cpp
  DaleDeadRegisterDefinitions.cpp
  DaleExpandAtomicPseudoInsts.cpp
  DaleExpandPseudoInsts.cpp
  DaleFoldMemOffset.cpp
  DaleFrameLowering.cpp
  DaleGatherScatterLowering.cpp
  DaleIndirectBranchTracking.cpp
  DaleInsertReadWriteCSR.cpp
  DaleInsertVSETVLI.cpp
  DaleInsertWriteVXRM.cpp
  DaleInstrInfo.cpp
  DaleISelDAGToDAG.cpp
  DaleISelLowering.cpp
  DaleLandingPadSetup.cpp
  DaleLateBranchOpt.cpp
  DaleLoadStoreOptimizer.cpp
  DaleMachineFunctionInfo.cpp
  DaleMakeCompressible.cpp
  DaleMergeBaseOffset.cpp
  DaleMoveMerger.cpp
  DaleOptWInstrs.cpp
  DalePostRAExpandPseudoInsts.cpp
  DalePushPopOptimizer.cpp
  DaleRedundantCopyElimination.cpp
  DaleRegisterInfo.cpp
  DaleSelectionDAGInfo.cpp
  DaleSubtarget.cpp
  DaleTargetMachine.cpp
  DaleTargetObjectFile.cpp
  DaleTargetTransformInfo.cpp
  DaleVectorMaskDAGMutation.cpp
  DaleVectorPeephole.cpp
  DaleVLOptimizer.cpp
  DaleVMV0Elimination.cpp
  DaleZacasABIFix.cpp
  GISel/DaleCallLowering.cpp
  GISel/DaleInstructionSelector.cpp
  GISel/DaleLegalizerInfo.cpp
  GISel/DalePostLegalizerCombiner.cpp
  GISel/DaleO0PreLegalizerCombiner.cpp
  GISel/DalePreLegalizerCombiner.cpp
  GISel/DaleRegisterBankInfo.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  CodeGenTypes
  Core
  GlobalISel
  IPO
  MC
  DaleDesc
  DaleInfo
  Scalar
  SelectionDAG
  Support
  Target
  TargetParser
  TransformUtils
  Vectorize

  ADD_TO_COMPONENT
  Dale
  )

add_subdirectory(AsmParser)
add_subdirectory(Disassembler)
add_subdirectory(MCTargetDesc)
add_subdirectory(MCA)
add_subdirectory(TargetInfo)
