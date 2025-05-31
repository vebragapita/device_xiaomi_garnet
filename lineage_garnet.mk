#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# rising Maintainer
RISING_MAINTAINER := Vebraga

# Remove prebuilt
TARGET_INCLUDE_ACCORD := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Pribuilt kernel true/false
PREBUILT_KERNEL := true

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# To include Gapps 
WITH_GMS :=true
TARGET_CORE_GMS ?= true

# To Build Google(Dailer, Message, Phone) and BCR
WITH_GMS_COMMS_SUITE := true

# To Add cinematic wallpaer support (only supported in gapps build not in vanilla remove this flag for vanilla builds)
TARGET_SUPPORTS_WALLEFFECT := true

#Some more GMS Flag
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true

# To Add Bypass Charging Support (need to be adapted in DT and KT as well)
BYPASS_CHARGE_SUPPORTED  := true

# These flags needs WITH_GMS set to true
# Whether to ship pixel launcher and set it as default launcher, false by default
TARGET_DEFAULT_PIXEL_LAUNCHER := true


# Whether to ship prebuilt Google Dialer and Messages, false by default
TARGET_INCLUDE_GOOGLE_DIALER := true
TARGET_INCLUDE_GOOGLE_MESSAGES := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := true

# Device props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_OMX_SERVICE := false

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="garnet_global-user 15 AQ3A.240912.001 OS2.0.9.0.VNRMIXM release-keys" \
    BuildFingerprint=Redmi/garnet_global/garnet:15/AQ3A.240912.001/OS2.0.9.0.VNRMIXM:user/release-keys \
    DeviceName=garnet \
    DeviceProduct=garnet_global
    isingChipset="Snapdragon® 7+ Gen 2  \
    RisingMaintainer="Vebraga"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi