TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11

SOURCES += main.cpp \
    class/states.cpp \
    class/commandsgenerator.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    material/TabButton.qml \
    JS/Front.js \
    material/CodeArea.qml \
    material/ButtonAlt.qml \
    material/Switch.qml

HEADERS += \
    class/states.h \
    class/commandsgenerator.h
