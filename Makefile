export ROOT_DIR=/home/gar/Repos/mixrank
export THEOS=${ROOT_DIR}/etc/theos
export THEOS_PORT=22
caml_CFLAGS=-std=c++11
# Remeber to do this for the compiler
# source ~/.nix-profile/etc/profile.d/nix.sh 
# Have to give path of C++ headers
caml_CFLAGS+=-I/home/gar/.nix-profile/iPhoneOS9.2.sdk/usr/include/c++/4.2.1

SDKTARGET := armv7-apple-darwin11

include $(THEOS)/makefiles/common.mk

caml_FRAMEWORKS = Foundation Security

TOOL_NAME = caml

caml_FILES = main.mm

include $(THEOS_MAKE_PATH)/tool.mk
