add_llvm_component_library(LLVMDaleAsmParser
  DaleAsmParser.cpp

  LINK_COMPONENTS
  MC
  MCParser
  DaleDesc
  DaleInfo
  Support
  TargetParser

  ADD_TO_COMPONENT
  Dale
  )
