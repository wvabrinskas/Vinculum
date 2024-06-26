ARCHS = arm64 arm64e
GO_EASY_ON_ME = 1
TARGET = iphone:13.0:13.0
THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222
THEOS_PACKAGE_DIR_NAME = debs

DEBUG=0
FINALPACKAGE=1
INSTALL_TARGET_PROCESSES = backboardd


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Vinculum2
Vinculum2_FILES = Tweak.x ConfigurationManager.xm Status.m
Vinculum2_LDFLAGS += -Llib -Wl,-segalign,4000
Vinculum2_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += Vinculum2
include $(THEOS_MAKE_PATH)/aggregate.mk
