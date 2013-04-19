PRODUCT_PACKAGES += FileManager PinyinIME

PRODUCT_PACKAGES_FILTEROUT := SystemUI

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/asound.conf:system/etc/asound.conf \

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_MANUFACTURER := ZKJC
PRODUCT_NAME := greatzc_e350
PRODUCT_DEVICE := greatzc_e350

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN
PRODUCT_LOCALES := zh_CN en_US mdpi
