add_llvm_component_library(LLVMDaleInfo
  DaleTargetInfo.cpp

  LINK_COMPONENTS
  MC
  Support

  ADD_TO_COMPONENT
  Dale
  )
