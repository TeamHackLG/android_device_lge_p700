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

LGE_MSM7X27A_DEVICE := p700

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/p700/p700-vendor.mk)

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

PRODUCT_COPY_FILES += \
    device/lge/p700/rootdir/system/usr/keylayout/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density="240" \
    ro.sf.hwrotation="180"
