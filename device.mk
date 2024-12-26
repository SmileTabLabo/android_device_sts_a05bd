#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 28


DEVICE_PATH := device/sts/a05bd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Audio Configs


PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/camera/lib/libhidltransport.so:$(TARGET_COPY_OUT_SYSTEM)/etc/lib/libhidltransport.so \
    $(DEVICE_PATH)/configs/camera/lib64/libhidltransport.so:$(TARGET_COPY_OUT_SYSTEM)/etc/lib64/libhidltransport.so

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt8168 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt8168.rc \
    init.mt8168.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/sts/a05bd/a05bd-vendor.mk)
