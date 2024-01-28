# Copyright (C) 2017-2023 The Android Open Source Project
# Copyright (C) 2014-2023 The Team Win LLC
# SPDX-License-Identifier: Apache-2.0
#

# For building with aosp manifest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fire
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6768

# Assert
TARGET_OTA_ASSERT_DEVICE := fire

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE        := 0x40078000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_RAMDISK_OFFSET     := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Partitions configs
BOARD_FLASH_BLOCK_SIZE   := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728

# Boot recovery ramdisk
BOARD_USES_RECOVERY_AS_BOOT := true
#TARGET_NO_RECOVERY := true
TW_HAS_NO_RECOVERY_PARTITION := true

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_PARTITION_LIST := system vendor product
BOARD_MAIN_SIZE := 9122611200

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# System as root
BOARD_ROOT_EXTRA_FOLDERS := cust persist
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_INCLUDE_NTFS_3G := true
TARGET_USES_MKE2FS := true
TW_INCLUDE_FB2PNG := true
TW_EXCLUDE_APEX := true
TW_FRAMERATE := 60

# Device config
TW_MAX_BRIGHTNESS := 2047
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true

TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.%d/file

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Configure Status bar icons for regular TWRP builds only
TW_CUSTOM_BATTERY_POS := 800
TW_CUSTOM_CLOCK_POS := 60
TW_CUSTOM_CPU_POS := 300
TW_STATUS_ICONS_ALIGN := center

# Decryption
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Haptics
#TW_NO_HAPTICS := true
TW_SUPPORT_INPUT_AIDL_HAPTICS := true

# TWRP binaries tools
#TW_EXCLUDE_NANO := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_PYTHON := true
TW_INCLUDE_RESETPROP := true
#TW_INCLUDE_LIBRESETPROP :=true
#TW_INCLUDE_MAGISKBOOT := true
TW_INCLUDE_REPACKTOOLS := true

TW_BACKUP_EXCLUSIONS := /data/fonts
