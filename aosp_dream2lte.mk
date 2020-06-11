#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/dream2lte/dream2lte.mk)
$(call inherit-product, device/samsung/universal8895-common/universal8895-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

#GApps
TARGET_GAPPS_ARCH := arm64
AOSP_BUILDTYPE := UNOFFICIAL

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_dream2lte
PRODUCT_DEVICE := dream2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G955F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME=dream2lte \
#    PRIVATE_BUILD_DESC="dream2ltexx-user 9 PPR1.180610.011 G955FXXS5DSH5 release-keys"

#BUILD_FINGERPRINT := samsung/dream2ltexx/dream2lte:9/PPR1.180610.011/G955FXXS5DSH5:user/release-keys
