#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common tree
include device/samsung/mt6768-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a32

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_RECOVERY_DENSITY := xxhdpi

# Inherit the proprietary files
include vendor/samsung/a32/BoardConfigVendor.mk
