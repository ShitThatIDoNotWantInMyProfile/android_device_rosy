#
# Copyright (C) The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common RevengeOS stuff
$(call inherit-product, vendor/revengeos/config/common.mk)

# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := revengeos_rosy
PRODUCT_DEVICE := rosy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := Xiaomi

# Build RevengeOS Official
REVENGEOS_BUILDTYPE := OFFICIAL

TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
