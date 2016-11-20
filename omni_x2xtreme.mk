$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/allview/x2xtreme/device.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := x2xtreme

EXTENDED_FONT_FOOTPRINT := true

PRODUCT_DEVICE := x2xtreme
PRODUCT_NAME := omni_x2xtreme
PRODUCT_BRAND := Allview
PRODUCT_MODEL := X2 Soul Xtreme
PRODUCT_MANUFACTURER := Gionee
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 2560
TARGET_SCREEN_WIDTH       := 1440
TARGET_BOOTANIMATION_NAME := 1440

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
