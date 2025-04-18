add_llvm_component_library(LLVMDaleDesc
  DaleAsmBackend.cpp
  DaleBaseInfo.cpp
  DaleELFObjectWriter.cpp
  DaleInstPrinter.cpp
  DaleMCAsmInfo.cpp
  DaleMCCodeEmitter.cpp
  DaleMCExpr.cpp
  DaleMCObjectFileInfo.cpp
  DaleMCTargetDesc.cpp
  DaleMatInt.cpp
  DaleTargetStreamer.cpp
  DaleELFStreamer.cpp

  LINK_COMPONENTS
  MC
  DaleInfo
  Support
  TargetParser

  ADD_TO_COMPONENT
  Dale
)
