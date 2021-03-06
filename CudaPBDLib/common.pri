
#DEPPATH = $${PWD}/thirdparty
#DEPS = $$system(ls $${DEPPATH})
#!isEmpty(DEPS) {
#  for(d, DEPS) {
#    INCLUDEPATH += $${DEPPATH}/$${d}
#    INCLUDEPATH += $${DEPPATH}/$${d}/include
#  }
#}

INCLUDEPATH += \
  /usr/local/include \
  # This comes last so the home directory takes higher precidence
  /public/devel/2018/include 

INCLUDEPATH += $${PWD}/include

#DEFINES += SPLIT_USE_DOUBLE_PRECISION
DEFINES += THRUST_DEVICE_SYSTEM=THRUST_DEVICE_SYSTEM_CUDA

QT -= opengl core gui
CONFIG += console c++11
CONFIG -= app_bundle

# Standard flags
QMAKE_CXXFLAGS += -std=c++11 -g -fdiagnostics-color
# Optimisation flags  -Ofast
QMAKE_CXXFLAGS += -march=native -frename-registers -funroll-loops -ffast-math -fassociative-math
# Enable openmp
QMAKE_CXXFLAGS += -fopenmp
QMAKE_LFLAGS += -fopenmp
# Intrinsics flags
QMAKE_CXXFLAGS += -mfma -mavx2 -m64 -msse -msse2 -msse3
# Enable all warnings
QMAKE_CXXFLAGS += -Wall -Wextra -pedantic-errors -Wno-sign-compare
# Vectorization info
QMAKE_CXXFLAGS += -ftree-vectorize -ftree-vectorizer-verbose=5
