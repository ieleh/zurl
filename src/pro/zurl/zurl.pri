SRC_DIR = $$PWD/../..
COMMON_DIR = $$SRC_DIR/common

INCLUDEPATH += $$SRC_DIR
INCLUDEPATH += $$SRC_DIR/jdns
INCLUDEPATH += $$SRC_DIR/jdnsshared
INCLUDEPATH += $$SRC_DIR/qzmq/src

INCLUDEPATH += $$COMMON_DIR
DEFINES += NO_IRISNET

use_curl {
	DEFINES += USE_CURL
} else {
	DEFINES += USE_QNAM
}

HEADERS += \
	$$SRC_DIR/app.h

SOURCES += \
	$$SRC_DIR/app.cpp \
	$$SRC_DIR/main.cpp
