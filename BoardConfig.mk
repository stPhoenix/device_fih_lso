#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

#USE_NINJA := false
# Common specific options in device_lso.mk
-include device/lge/msm8226-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lso

# Bluetooth
#BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/fih/lso/bluetooth
#BOARD_CUSTOM_BT_CONFIG := device/fih/lso/bluetooth/vnd_lso.txt

# INIT
TARGET_INIT_VENDOR_LIB := libinit_lso
TARGET_RECOVERY_DEVICE_MODULES := libinit_lso
TARGET_UNIFIED_DEVICE := true

# Wifi
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WLAN_DEVICE := bcmdhd
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"

# Kernel
TARGET_KERNEL_CONFIG := lso_cyanogenmod_defconfig

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 10240 #mmcblk0p29
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10240 #mmcblk0p28
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1572864 #mmcblk0p31
BOARD_CACHEIMAGE_PARTITION_SIZE    := 112640 #mmcblk0p35
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 2048 #mmcblk0p17