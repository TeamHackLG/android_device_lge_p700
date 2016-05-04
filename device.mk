# Copyright (C) 2013 The Android Open-Source Project
# Copyright (C) 2016 The TeamVee-u0 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL p700 devices, and
# are also specific to p700 devices
#
# Everything in this directory will become public


DEVICE_PACKAGE_OVERLAYS += device/lge/p700/overlay

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)

$(call inherit-product-if-exists, vendor/lge/p700/p700-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_COPY_FILES += \
    device/lge/p700/rootdir/root/fstab.u0:root/fstab.u0 \
    device/lge/p700/rootdir/root/init.u0.rc:root/init.u0.rc \
    device/lge/p700/rootdir/root/ueventd.u0.rc:root/ueventd.u0.rc

PRODUCT_COPY_FILES += \
    device/lge/p700/rootdir/system/usr/keylayout/u0_keypad.kl:system/usr/keylayout/u0_keypad.kl \
    device/lge/p700/rootdir/system/usr/keylayout/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl

include device/lge/p700/system_prop.mk
