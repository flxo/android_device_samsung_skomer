USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/skomer/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := skomer

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4B000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x4CBB4000
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/skomer
TARGET_KERNEL_CONFIG := skomer_defconfig
TARGET_USE_ST_ERICSSON_KERNEL := true

# Recovery
# uncomment this to use the stock kernel for recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/skomer/recovery/recovery_kernel
TARGET_RECOVERY_INITRC = device/samsung/skomer/recovery/root/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/skomer/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file
