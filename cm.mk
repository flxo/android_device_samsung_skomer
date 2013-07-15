# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-S7710

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# If the boot animation is not automatically selected, we chose it here :)

PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip


# Inherit device configuration
$(call inherit-product, device/samsung/skomer/full_skomer.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := skomer
PRODUCT_NAME := cm_skomer
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7710
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-S7710 TARGET_DEVICE=GT-S7710
