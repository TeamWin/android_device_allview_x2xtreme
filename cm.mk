# Release name
PRODUCT_RELEASE_NAME := x2xtreme

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/allview/x2xtreme/device_x2xtreme.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x2xtreme
PRODUCT_NAME := cm_x2xtreme
PRODUCT_BRAND := allview
PRODUCT_MODEL := X2_Soul_Xtreme
PRODUCT_MANUFACTURER := Allview
