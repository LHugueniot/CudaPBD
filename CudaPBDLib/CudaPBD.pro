#-------------------------------------------------
#
# Project created by QtCreator 2019-02-19T12:27:13
#
#-------------------------------------------------
include($${PWD}/common.pri)

TEMPLATE = lib
TARGET = CudaPBD

CONFIG -= app_bundle

DEFINES += QT_DEPRECATED_WARNING

BUILD_DIR = build
DESTDIR = $${BUILD_DIR}/bin
OBJECTS_DIR = $${BUILD_DIR}/obj
CUDA_OBJECTS_DIR = $${BUILD_DIR}/cudaobj

INCLUDEPATH += $$PWD/include/

HEADERS += $$files(include/*(.h | .hpp | .inl | .cuh), true) \
           $$files(include/PBDLib, true)
HEADERS += $$PWD/include/*.cuh
SOURCES += $$files(src/*.cpp, true)

CUDA_SOURCES += $$files(src/*.cu, true)

#CUDA_ARCH=compute_35

include($${PWD}/cuda_common.pri)
