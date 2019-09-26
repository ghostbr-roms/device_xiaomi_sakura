#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/xiaomi/MiuiCamera/daisy.mk)

# Inherit from sakura device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common AOSP stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
CUSTOM_BUILD_TYPE := UNOFFICIAL
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := aosp_daisy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI A2 Lite 
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop	
BUILD_FINGERPRINT := "xiaomi/daisy/daisy_sprout:9/PKQ1.180917.001/V10.0.14.0.PDLMIXM:user/release-keys"

TARGET_SCREEN_WIDTH := 2280
TARGET_SCREEN_HEIGHT := 1080
