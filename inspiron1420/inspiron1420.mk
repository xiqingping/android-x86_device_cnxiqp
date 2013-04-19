PRODUCT_PACKAGES += audio.primary.$(TARGET_PRODUCT) audio_policy.$(TARGET_PRODUCT) audio.a2dp.default alsa.$(TARGET_PRODUCT)
PRODUCT_PACKAGES += AndroidTerm FileManager

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := inspiron1420
PRODUCT_DEVICE := inspiron1420
PRODUCT_MANUFACTURER := Dell
PRODUCT_MODEL := Dell Inspiron1420
PRODUCT_BRAND := Dell

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN
PRODUCT_LOCALES := zh_CN en_US mdpi

