LOCAL_PATH := $(call my-dir)
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/vbox_defconfig
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/vbox_info
TARGET_PREBUILT_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
LOCAL_FIRMWARES := 

include $(GENERIC_X86_ANDROID_MK)

