LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),skomer)
 include $(call all-makefiles-under,$(LOCAL_PATH))
endif
