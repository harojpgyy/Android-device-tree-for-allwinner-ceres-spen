#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ceres-spen device
$(call inherit-product, device/allwinner/ceres-spen/device.mk)

PRODUCT_DEVICE := ceres-spen
PRODUCT_NAME := omni_ceres-spen
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := QUAD-CORE A133 spen
PRODUCT_MANUFACTURER := allwinner

PRODUCT_GMS_CLIENTID_BASE := android-allwinner

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ceres_spen-eng 10 QP1A.191105.004 202108231125 test-keys"

BUILD_FINGERPRINT := Allwinner/ceres_spen/ceres-spen:10/QP1A.191105.004/202108231125:eng/test-keys
