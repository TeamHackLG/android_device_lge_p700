include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/p700/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := p700

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 androidboot.selinux=permissive

TARGET_KERNEL_CONFIG := cyanogenmod_u0_nonfc_defconfig

TARGET_RECOVERY_FSTAB := device/lge/p700/rootdir/root/fstab.u0

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p700/bluetooth

BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p700/recovery/graphics.c

# /system - 562MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 589299712

# Unified Device
TARGET_UNIFIED_DEVICE := true
TARGET_OTA_ASSERT_DEVICE := P700,p700,P705,p705,u0

# Set Device in init based on baseband
TARGET_INIT_VENDOR_LIB := libinit_u0
TARGET_LIBINIT_DEFINES_FILE := device/lge/p700/init/init_u0.c
