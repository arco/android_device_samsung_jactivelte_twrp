# Copyright (C) 2019, The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

PRODUCT_NAME := lineage_jactivelte_twrp
PRODUCT_DEVICE := jactivelte_twrp
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9295

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=jactivelte \
    PRIVATE_BUILD_DESC="jactiveltexx-user 5.0.1 LRX22C I9295XXUDPF1 release-keys"

BUILD_FINGERPRINT := "samsung/jactiveltexx/jactivelte:5.0.1/LRX22C/I9295XXUDPF1:user/release-keys"
