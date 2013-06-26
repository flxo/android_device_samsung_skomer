## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := skomer

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/skomer/device_skomer.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := skomer
PRODUCT_NAME := cm_skomer
PRODUCT_BRAND := samsung
PRODUCT_MODEL := skomer
PRODUCT_MANUFACTURER := samsung
