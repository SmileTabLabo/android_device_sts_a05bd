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

# Inherit from TAB-A05-BD device
$(call inherit-product, device/sts/a05bd/device.mk)

PRODUCT_DEVICE := a05bd
PRODUCT_NAME := lineage_a05bd
PRODUCT_BRAND := benesse
PRODUCT_MODEL := a05bd
PRODUCT_MANUFACTURER := sts

PRODUCT_GMS_CLIENTID_BASE := android-sts-tottori

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TAB-A05-BD-user 9 01.11.000 01.11.000 release-keys"

BUILD_FINGERPRINT := benesse/TAB-A05-BD/TAB-A05-BD:9/01.11.000/01.11.000:user/release-keys
