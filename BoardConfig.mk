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
BOARD_KERNEL_PAGESIZE := 2048 # output of unpackbootimg

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000  # mmcblk0p20
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000  # mmcblk0p21
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4B000000 # mmcblk0p22
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x4CBB4000 # mmcblk0p25
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/skomer/recovery/recovery_kernel
TARGET_RECOVERY_INITRC = device/samsung/skomer/recovery/root/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/skomer/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true

#TARGET_KERNEL_SOURCE := kernel/samsung/skomer
#TARGET_KERNEL_CONFIG := skomer_defconfig

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/skomer/recovery/recovery_kernel
TARGET_RECOVERY_INITRC = device/samsung/skomer/recovery/root/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/skomer/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/skomer/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_HWCOMPOSER := true
BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# twrp stuffs
# TODO recovery/twrp-graphics.c: please see the file for comments
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/skomer/recovery/twrp-graphics.c
DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file

TW_INCLUDE_CRYPTO_SAMSUNG := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p25"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,noauto_da_alloc,journal_async_commit,errors=panic    wait,check"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
