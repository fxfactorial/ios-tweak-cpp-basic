export THEOS=/home/gar/Repos/theos
export THEOS_PORT=22

SDKBINPATH := ${shell echo "/home/`whoami`/.nix-profile/bin"}

caml_CFLAGS=-std=c++11

# Remember to do this for the compiler
# source ~/.nix-profile/etc/profile.d/nix.sh
# and need to add to theos/makefiles/targets/Linux/iphone.mk
# _SDK_DIR := ${shell echo "/home/`whoami`/.nix-profile"}
# and need to change the lipo path, can't seem to affect it from just
# this makefile, maybe with an eval hack
# _THEOS_PLATFORM_LIPO := ${shell echo "/home/`whoami`/.nix-profile/bin"}/armv7-apple-darwin11-lipo
# Have to give path of C++ headers
caml_CFLAGS+=-I/home/gar/.nix-profile/iPhoneOS9.2.sdk/usr/include/c++/4.2.1

SDKTARGET := armv7-apple-darwin11

include $(THEOS)/makefiles/common.mk

caml_FRAMEWORKS = Foundation Security

TOOL_NAME = caml

caml_FILES = main.mm

include $(THEOS_MAKE_PATH)/tool.mk
