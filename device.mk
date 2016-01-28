$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, device/allview/x2xtreme/vendor/copyfiles.mk)
$(call inherit-product, vendor/allview/x2xtreme/x2xtreme-vendor-blobs.mk)

LOCAL_PATH := device/allview/x2xtreme

TARGET_OTA_ASSERT_DEVICE := x2xtreme

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):kernel

#Custom mkbootimg files
PRODUCT_PACKAGES += \
    mkbootimg-gionee \
    unpackbootimg-gionee

#Ramdisk - check before building!!!
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/root/init.mt6595.rc:root/init.mt6595 \
    $(LOCAL_PATH)/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/root/init.trustonic.rc:root/init.trustonic.rc \
    $(LOCAL_PATH)/root/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/root/init.zygote32.rc:root/init.zygote32.rc \
    $(LOCAL_PATH)/root/init.zygote64_32.rc:root/init.zygote64_32.rc \
    $(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/root/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/root/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/root/fstab.mt6795:root/fstab.mt6795 \
    $(LOCAL_PATH)/root/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/root/init.mt6795.rc:root/init.mt6795.rc \
    $(LOCAL_PATH)/root/init.mt6795.usb.rc:root/init.mt6795.usb.rc \
    $(LOCAL_PATH)/root/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/root/init.ssd.rc:root/init.ssd.rc \
    $(LOCAL_PATH)/root/init.xlog.rc:root/init.xlog.rc \
    $(LOCAL_PATH)/root/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/root/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/root/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/root/init:root/init \
    $(LOCAL_PATH)/root/init.storage.rc:root/init.storage.rc \

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8
