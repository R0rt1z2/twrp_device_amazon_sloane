TARGET_NO_BOOTLOADER := true

DEVICE_PATH := device/amazon/sloane

TARGET_BOARD_PLATFORM := mt8173

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := arm64
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

TARGET_CPU_ABI_LIST := arm64-v8a,arm64,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a,arm64

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file

BOARD_KERNEL_CMDLINE :=

BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00080000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000

BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2000000
                                      
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) 

# Sloane needs second stage in the image (dt). Use mkbootimg.mk to be able to parse the --second argument.
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

# Original - not enough space for us!
#BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03f80000 --second_offset 0x00e80000 --tags_offset 0x07f80000

TARGET_USERIMAGES_USE_EXT4 := true

RECOVERY_VARIANT := twrp

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab
#TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

RECOVERY_SDCARD_ON_DATA := true

TW_THEME := landscape_hdpi
TW_HACKED_BL_BUTTON := true
TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
TW_AMONET := true
