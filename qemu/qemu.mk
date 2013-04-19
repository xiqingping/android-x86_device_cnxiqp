PRODUCT_PACKAGES += audio.primary.$(TARGET_PRODUCT) audio_policy.$(TARGET_PRODUCT) audio.a2dp.default alsa.$(TARGET_PRODUCT)
PRODUCT_PACKAGES += AndroidTerm FileManager

PRODUCT_COPY_FILES := \


$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := qemu
PRODUCT_DEVICE := qemu
PRODUCT_MANUFACTURER := Sun
PRODUCT_MODEL := qemu
PRODUCT_BRAND := CnXiqp

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN
PRODUCT_LOCALES := zh_CN en_US mdpi

