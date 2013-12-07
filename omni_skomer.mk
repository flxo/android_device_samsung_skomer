#
# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2013 Felix Obenuhber (f.obenhuber@gmail.com)
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/samsung/skomer/skomer.mk)

# Device identifier
PRODUCT_DEVICE := skomer
PRODUCT_NAME := omni_skomer
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7710
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint and ID
BUILD_ID := $(shell date -u +%Y%m%d)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=omni_skomer BUILD_FINGERPRINT=omni/omni_skomer/skomer:4.3.1/$(BUILD_ID) PRIVATE_BUILD_DESC="GT-S7710 4.3.1"
