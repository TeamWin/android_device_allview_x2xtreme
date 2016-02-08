#Starting BoardConifg.mk for x2xtreme.
#Everything written here is fo Allview X2 Soul Xtreme (known as Blu Pure XL or Gionee Elife E8).
#Check every line before staring your build machine!
#Good luck!
#

#Your path etc.
LOCAL_PATH := device/allview/x2xtreme
-include vendor/allview/x2xtreme/BoardConfigVendor.mk

USE_CAMERA_STUB := true
#TARGET_PROVIDES_INIT_RC := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

#CPU args
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true

#TWRP - only if you have ../bootable/recovery replaced with TWRP source
<<<<<<< HEAD
TW_NO_USB_STORAGE := false
TW_NEVER_UNMOUNT_SYSTEM := true
TARGET_CPU_SMP := true
TW_NO_SCREEN_BLANK := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
#Seems that those below are not needed
#TW_INTERNAL_STORAGE_PATH := "/data/media/0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := '/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/root/init.rc
=======
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/root/init.rc
#Don't change resolution as it won't compile twrp -> that is highest possible
>>>>>>> bef921280c8684ac08ac153e241e361ac61dd61e
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true 
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/kernel


#Bootloader related
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6796
TARGET_BOOTLOADER_BOARD_NAME := mt6795

#Kernel related
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
#BOARD_KERNEL_BASE := 0x40078000
#BOARD_KERNEL_BASE := 0x4dffff00
BOARD_KERNEL_PAGESIZE := 2048
TARGET_MKIMAGE := $(LOCAL_PATH)/mkimage
#BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1442413460
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
#BOARD_CUSTOM_BOOTIMG := true
#TARGET_USE_BUILT_BOOTIMAGE := true

# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
BOARD_EGL_WORKAROUND_BUG_10194508 := true

#Partitions - before building check in your device's /proc/mtd  !!!
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3011510272
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58954612736
BOARD_FLASH_BLOCK_SIZE := 131072

#MediaTek Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

#Recovery related - disabled for building TWRP
#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_RECOVERY_SWIPE := true
#BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
#TARGET_USERIMAGES_USE_EXT4 := true
