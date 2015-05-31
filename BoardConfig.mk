include device/lge/msm7x27a-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/lge/p700/BoardConfigVendor.mk

LGE_PROJECT := l

TARGET_BOOTLOADER_BOARD_NAME := p700

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 lge.signed_image=false

TARGET_KERNEL_CONFIG := cyanogenmod_u0_defconfig

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p700/recovery/graphics.c

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p700/bluetooth
