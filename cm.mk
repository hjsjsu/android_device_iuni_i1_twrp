## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := i1

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/iuni/i1/device_i1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i1
PRODUCT_NAME := cm_i1
PRODUCT_BRAND := iuni
PRODUCT_MODEL := IUNI I1
PRODUCT_MANUFACTURER := IUNI
