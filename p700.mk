$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/p700/p700-vendor.mk)
$(call inherit-product, device/lge/msm7x27a-common/nfc.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p700/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.u0.rc:root/init.u0.rc \
    $(LOCAL_PATH)/ueventd.u0.rc:root/ueventd.u0.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/u0_keypad.kl:system/usr/keylayout/u0_keypad.kl \
    $(LOCAL_PATH)/configs/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/configs/melfas-ts.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/configs/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl \
    $(LOCAL_PATH)/configs/fstab.u0:root/fstab.u0

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Misc
PRODUCT_PACKAGES += \
    libnetcmdiface

PRODUCT_DEVICE := p700
PRODUCT_NAME := full_p700
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P700
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=u0_open_eu \
    BUILD_FINGERPRINT="lge/u0_open_EUR/u0:4.1.2/JZO54K/P700_V20a-EUR-V20a.20130321.085042:user/release-keys" \
    PRIVATE_BUILD_DESC="u0_open_EUR-user 4.1.2 JZO54K P700_V20a-EUR-XX.1363826923 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL7
PRODUCT_VERSION_DEVICE_SPECIFIC :=


