TEMPLATE = app
QT += testlib widgets
CONFIG += testcase
DEFINES += UNIT_TEST_RUN

include ("../global.pri")
include("../src/src.pri")

DEFINES-=DEVELOPER_MODE

INCLUDEPATH += $$PWD/../src/

SOURCES += assertingproxymodel.cpp \
           main.cpp \
           modelsignalspy.cpp \
           quick/testui.cpp \
           signalspy.cpp \
           testarchivedtasksmodel.cpp \
           testbase.cpp \
           testcheckabletagmodel.cpp \
           testduedate.cpp \
           teststagedtasksmodel.cpp \
           teststorage.cpp \
           testtaskfiltermodel.cpp \
           testtag.cpp \
           testtask.cpp \
           testtagmodel.cpp \
           testgitutils.cpp

HEADERS += assertingproxymodel.h \
           modelsignalspy.h \
           quick/testui.h \
           signalspy.h \
           testarchivedtasksmodel.h \
           testcheckabletagmodel.h \
           testduedate.h \
           testtaskfiltermodel.h \
           teststorage.h \
           testbase.h \
           teststagedtasksmodel.h \
           testtag.h \
           testtask.h \
           testtagmodel.h \
           testgitutils.h
