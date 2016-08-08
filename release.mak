BINARYDIR := Release

#Toolchain
CXX := g++
LD := $(CXX)
AR := ar
OBJCOPY := objcopy

#Additional flags
PREPROCESSOR_MACROS := NDEBUG RELEASE
INCLUDE_DIRS := ./bOPRFlib ./thirdparty/linux ./thirdparty/linux/boost/includes ./thirdparty/linux/miracl
LIBRARY_DIRS := ./thirdparty/linux/boost/stage/lib ./thirdparty/linux/cryptopp ./thirdparty/linux/miracl/miracl/source ./thirdparty/linux/mpir/.libs ./thirdparty/linux/ntl/src ./bin/
SHARED_LIBRARY_NAMES := pthread rt
STATIC_LIBRARY_NAMES := boost_system boost_filesystem boost_thread mpir miracl cryptopp bOPRF 
ADDITIONAL_LINKER_INPUTS := 
MACOS_FRAMEWORKS := 
LINUX_PACKAGES := 

CXXFLAGS := -ggdb -ffunction-sections -O3 -Wall -std=c++11 -maes -msse2 -msse4.1 -mpclmul -Wfatal-errors -pthread
LDFLAGS := -Wl,-gc-sections -pthread
COMMONFLAGS := 

START_GROUP := -Wl,--start-group
END_GROUP := -Wl,--end-group
