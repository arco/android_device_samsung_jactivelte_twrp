# Copyright (C) 2019, The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_USES_64_BIT_BINDER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_SOURCE := kernel/samsung/jf
TARGET_KERNEL_CONFIG := twrp_defconfig
TARGET_KERNEL_VARIANT_CONFIG := jactive_eur_defconfig

# Boot image
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=22 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2304770048
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12771655680
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 367001600
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
LZMA_RAMDISK_TARGETS := recovery
TARGET_RECOVERY_DENSITY := hdpi
TARGET_RECOVERY_DEVICE_DIRS := device/samsung/jactivelte_twrp
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_DOWNLOAD_MODE := true

# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/samsung/jactivelte_twrp/recovery/root/twrp.fstab
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_BASH := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_TZDATA := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_NO_REBOOT_BOOTLOADER := true
TW_TARGET_USES_QCOM_BSP := true
TW_USE_TOOLBOX := true

# Assert
TARGET_OTA_ASSERT_DEVICE := jactivelte

# Allow missing dependencies
ALLOW_MISSING_DEPENDENCIES := true
