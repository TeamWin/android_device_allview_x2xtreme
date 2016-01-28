#Starting AndroidBoard.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

-include vendor/allview/x2xtreme/AndroidBoardVendor.mk
