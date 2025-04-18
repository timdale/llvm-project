add_llvm_component_library(LLVMDaleDisassembler
  DaleDisassembler.cpp

  LINK_COMPONENTS
  MC
  MCDisassembler
  DaleDesc
  DaleInfo
  Support

  ADD_TO_COMPONENT
  Dale
  )
