LOCAL_PATH := $(call my-dir)
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/inspiron1420_defconfig
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/inspiron1420_info
TARGET_PREBUILT_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
LOCAL_FIRMWARES :=$(notdir $(wildcard device/common/firmware/iwlwifi-3945-2.ucode))

include $(GENERIC_X86_ANDROID_MK)

