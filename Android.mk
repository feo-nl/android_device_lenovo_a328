LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),a328)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
