#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common VoltageOS stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Afterlife Build Type
AFTERLIFE_BUILD_TYPE := UNOFFICIAL
AFTERLIFE_MAINTAINER := PARDO OYO

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Asus Zenfone Max Pro M2
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 73 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "asus/WW_X01BD/ASUS_X01BD_1:10/QKQ1/17.2018.2012.434-20201203:user/release-keys"
