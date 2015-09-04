TEMPLATE = app

QT += qml quick widgets


SOURCES += main.cpp

RESOURCES += qml.qrc

qml.files = *.qml

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)


#RESOURCES += qml.qrc

#DESTPATH = $$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending-qml/chapter1-basics
#target.path = $$DESTPATH

#qml.files = *.qml
#qml.path = $$DESTPATH

#INSTALLS += target qml

HEADERS +=

