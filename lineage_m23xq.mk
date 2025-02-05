#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2408

# Inherit from m23xq device
$(call inherit-product, device/samsung/m23xq/device.mk)

PRODUCT_DEVICE := m23xq
PRODUCT_NAME := lineage_m23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E236
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m23xqdd-user 14 UP1A.231005.007 E236BXXS7EXH1 release-keys"

BUILD_FINGERPRINT := samsung/m23xqdd/m23xq:14/UP1A.231005.007/E236BXXS7EXH1:user/release-keys
