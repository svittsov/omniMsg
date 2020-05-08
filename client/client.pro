QT -= gui
DEFINES += __WIN32__
DEFINES += __x86__
DEFINES += _WIN32_WINNT=0x0400
CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        ../echo.cpp \
        main.cpp \
        orbthread.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    ../echo.h \
    orbthread.h

win32: LIBS += -L$$PWD/../../../../lib/x86_win32/ -lomniORB4_rt

INCLUDEPATH += $$PWD/../../../../include
DEPENDPATH += $$PWD/../../../../include

win32: LIBS += -L$$PWD/../../../../lib/x86_win32/ -lomniDynamic4_rt

INCLUDEPATH += $$PWD/../../../../include/omniORB4
DEPENDPATH += $$PWD/../../../../include/omniORB4

win32: LIBS += -L$$PWD/../../../../lib/x86_win32/ -lomnithread_rt

INCLUDEPATH += $$PWD/../../../../include/omnithread
DEPENDPATH += $$PWD/../../../../include/omnithread
