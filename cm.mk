# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, device/fih/lso/device_lso.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := Infocus M2
PRODUCT_NAME := cm_lso
PRODUCT_MODEL := Infocus-M2
PRODUCT_DEVICE := lso
PRODUCT_MANUFACTURER := fih
PRODUCT_BRAND := infocus
