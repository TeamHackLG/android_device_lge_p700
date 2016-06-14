# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/p700/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := p700

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 androidboot.selinux=permissive

TARGET_KERNEL_CONFIG := cyanogenmod_u0_nonfc_defconfig

TARGET_RECOVERY_FSTAB := device/lge/p700/rootdir/root/fstab.u0

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p700/bluetooth

# Recovery
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
RECOVERY_VARIANT := omni
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_CPU_TEMP := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 225

# /system - 562MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 589299712

# Unified Device
TARGET_UNIFIED_DEVICE := true
TARGET_OTA_ASSERT_DEVICE := P700,p700,P705,p705,u0

# Set Device in init based on baseband
TARGET_INIT_VENDOR_LIB := libinit_u0
TARGET_LIBINIT_DEFINES_FILE := device/lge/p700/init/init_u0.c
