# Copyright (C) 2017-2023 The Android Open Source Project
# Copyright (C) 2014-2023 The Team Win LLC
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), fire)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
