$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/allview/x2xtreme/device.mk)

# Release name
PRODUCT_RELEASE_NAME := allview x2xtreme

EXTENDED_FONT_FOOTPRINT := true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Warsaw 

PRODUCT_DEVICE := x2xtreme
PRODUCT_NAME := full_x2xtreme
PRODUCT_BRAND := allview
PRODUCT_MODEL := X2_Soul_Xtreme
PRODUCT_MANUFACTURER := allview
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 2560
TARGET_SCREEN_WIDTH       := 1440
TARGET_BOOTANIMATION_NAME := 1440

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
