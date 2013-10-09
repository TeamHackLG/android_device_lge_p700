include device/lge/msm7x27a-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/lge/p700/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := p700
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 lge.signed_image=false

TARGET_KERNEL_CONFIG := cyanogenmod_u0_defconfig
TARGET_PREBUILT_KERNEL := device/lge/p700/kernel

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p700/recovery/graphics.c


LGE_PROJECT := l

BOARD_USE_LEGACY_SENSORS_FUSION := false

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p700/bluetooth

# TWRP

DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_FLIPPED_SCREEN := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
