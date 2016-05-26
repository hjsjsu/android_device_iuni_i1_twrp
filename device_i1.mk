$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/iuni/i1/i1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/iuni/i1/overlay

LOCAL_PATH := device/iuni/i1

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/iuni/i1/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	 $(LOCAL_PATH)/dt.img:dt.img

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_i1
PRODUCT_DEVICE := i1
