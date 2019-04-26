TEMPLATE=app

CONFIG+=c++11

SOURCES += src/*.cpp \

OBJECTS_DIR+=build/obj

TARGET= build/bin/Tests
CUDA_OBJECTS_DIR = build/cudaobj

INCLUDEPATH+= ../CudaPBDLib/include/

QMAKE_RPATHDIR+= $$PWD/../CudaPBDLib/build/bin

LIBS+= -L$$PWD/../CudaPBDLib/build/bin -lCudaPBD

LIBS+= -L/usr/local/lib  -lgtest -lgmock  -lgtest_main -lassimp

include($${PWD}/../CudaPBDLib/cuda_common.pri)
