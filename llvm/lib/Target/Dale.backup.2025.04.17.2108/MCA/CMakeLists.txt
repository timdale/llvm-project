add_llvm_component_library(LLVMDaleTargetMCA
  DaleCustomBehaviour.cpp

  LINK_COMPONENTS
  CodeGenTypes
  MC
  MCA
  MCParser
  DaleDesc
  DaleInfo
  Support
  TargetParser

  ADD_TO_COMPONENT
  Dale
  )
