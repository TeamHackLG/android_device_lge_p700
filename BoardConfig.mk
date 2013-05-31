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

# Enable gsm and network search
COMMON_GLOBAL_CFLAGS += -DFORCE_RILD_AS_ROOT # Not sure if this is needed
BOARD_FORCE_RILD_AS_ROOT := true
BOARD_USES_LEGACY_RIL := true
# wifi

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := p700

TARGET_QCOM_DISPLAY_VARIANT := legacy