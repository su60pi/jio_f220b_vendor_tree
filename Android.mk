#
# Android.mk for vendor/jio/f220b
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),f220b)

include $(CLEAR_VARS)
LOCAL_MODULE := libmmcamera_interface
LOCAL_MODULE_OWNER := jio
LOCAL_SRC_FILES := proprietary/lib/libmmcamera_interface.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

endif
