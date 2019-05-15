#
# Copyright 2016 The Android Open Source Project
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

# Include DU configuration.
include vendor/du/config/common_full_phone.mk

# Inherit from the sargo AOSP configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Google
PRODUCT_NAME := du_sargo
PRODUCT_DEVICE := sargo
PRODUCT_MODEL := Pixel 3a

# Device fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    BUILD_FINGERPRINT=google/sargo/sargo:9/PD2A.190115.032/5340326:user/release-keys \
    PRIVATE_BUILD_DESC="sargo-user 9 PD2A.190115.032 5340326 release-keys"

$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)


