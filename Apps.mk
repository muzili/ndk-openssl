# Copyright 2006 The Android Open Source Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := openssl
LOCAL_MULTILIB := both
LOCAL_MODULE_STEM_32 := openssl
LOCAL_MODULE_STEM_64 := openssl64
LOCAL_CLANG := true
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libssl libcrypto
include $(LOCAL_PATH)/Apps-config-target.mk
include $(LOCAL_PATH)/android-config.mk
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/android-config.mk $(LOCAL_PATH)/Apps.mk

LOCAL_C_INCLUDES:= $(LOCAL_C_INCLUDES:external/openssl/%=$(LOCAL_PATH)/%)
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES_$(TARGET_ARCH))
LOCAL_CFLAGS 	+= $(LOCAL_CFLAGS_$(TARGET_ARCH))

LOCAL_SRC_FILES_$(TARGET_ARCH) :=
LOCAL_SRC_FILES_x86_64 :=
LOCAL_SRC_FILES_arm :=
LOCAL_SRC_FILES_x86 :=
LOCAL_SRC_FILES_mips :=

include $(BUILD_EXECUTABLE)

