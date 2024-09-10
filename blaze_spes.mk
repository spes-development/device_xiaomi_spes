#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common ProjectBlaze stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Product Specifics
PRODUCT_NAME := blaze_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot Animaton
TARGET_BOOT_ANIMATION_RES := 1080

# Blaze Flags
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := тαиνir
WITH_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_TOUCHGESTURES := true

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V14.0.6.0.TGKMIXM:user/release-keys"
