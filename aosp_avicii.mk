#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Additional stuff for this product.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_CUSTOM_AVB_KEY := true
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit Google Pixel Updatable APEX
TARGET_SHIP_PREBUILT_APEX := true
$(call inherit-product-if-exists, vendor/pixel-additional/config.mk)

# Environment Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Device specific
PRODUCT_NAME := aosp_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2003

CUSTOM_DEVICE := Nord
PRODUCT_SYSTEM_NAME := Nord
PRODUCT_SYSTEM_DEVICE := Nord

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
