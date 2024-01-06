#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Environment Flags
IS_PHONE := true
TARGET_BUILD_WITH_LTO := false

# Boot Animation
TARGET_SCREEN_HEIGHT := 3840
TARGET_SCREEN_WIDTH := 1644
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_BOOTANIMATION_HALF_RES := true

# Evolution-X Flags
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_APERTURE_CAMERA := false

# Un|Officialify
EVO_BUILD_TYPE := UNOFFICIAL

# Device Identifiers
PRODUCT_NAME := evolution_pdx215
PRODUCT_DEVICE := pdx215
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 1 III

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-BC72-user 13 61.2.A.0.472A 061002A0000472A00046651803 release-keys"

BUILD_FINGERPRINT := Sony/XQ-BC72_SEA/XQ-BC72:13/61.2.A.0.472A/061002A0000472A00046651803:user/release-keys
