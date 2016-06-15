# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
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

# This file includes all definitions that apply to ALL L7 devices
# Everything in this directory will become public

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/p700/p700-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p700/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    device/lge/p700/rootdir/root/fstab.u0:root/fstab.u0 \
    device/lge/p700/rootdir/root/init.u0.rc:root/init.u0.rc \
    device/lge/p700/rootdir/root/ueventd.u0.rc:root/ueventd.u0.rc

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/msm7x27a-common/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/msm7x27a-common/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/msm7x27a-common/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    device/lge/p700/rootdir/system/usr/keylayout/u0_keypad.kl:system/usr/keylayout/u0_keypad.kl \
    device/lge/p700/rootdir/system/usr/keylayout/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl

PRODUCT_COPY_FILES += \
    device/lge/p700/recovery/root/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Light HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a

# HWComposer
PRODUCT_PACKAGES += \
    hwcomposer.msm7x27a

include device/lge/p700/system_prop.mk
