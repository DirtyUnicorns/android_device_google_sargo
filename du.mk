# Copyright (C) 2018-2019 The Dirty Unicorns Project
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

# Include DU common configuration
include vendor/du/config/common_full_phone.mk

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

PRODUCT_NAME := du_sargo
PRODUCT_DEVICE := sargo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3a
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sargo" \
    TARGET_DEVICE="sargo" \
    PRIVATE_BUILD_DESC="sargo-user 10 QQ1A.191205.011 6009058 release-keys"

BUILD_FINGERPRINT := "google/sargo/sargo:10/QQ1A.191205.011/6009058:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/sargo/sargo:10/QQ1A.191205.011/6009058:user/release-keys

BOARD_PREBUILT_VENDORIMAGE := vendor/images/sargo/vendor.img

$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
