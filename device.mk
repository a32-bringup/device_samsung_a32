#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common makefile
$(call inherit-product, device/samsung/mt6768-common/common.mk)

# Inherit 4gb dalvik vm
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

DEVICE_PATH := device/samsung/a32

# Configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio,$(TARGET_COPY_OUT_VENDOR)/etc) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/nfc,$(TARGET_COPY_OUT_VENDOR)/etc)    

PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGES += \
    FrameworksResOverlayA32 \
    SettingsProviderOverlayA32 \
    SystemUIOverlayA32 \
    WifiOverlayA32

# Power
TARGET_TAP_TO_WAKE_NODE := /sys/touchpanel/double_tap
$(call soong_config_set,mediatek_power,double_tap_to_wake_node,$(TARGET_TAP_TO_WAKE_NODE))

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a32/a32-vendor.mk)
