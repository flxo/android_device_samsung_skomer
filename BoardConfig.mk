USE_CAMERA_STUB := true

TARGET_OTA_ASSERT_DEVICE := skomer,i7710,GT-S7710

# inherit from the proprietary version
-include vendor/samsung/skomer/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := montblanc
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
TARGET_USERIMAGES_USE_EXT4 := true


# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/skomer
TARGET_KERNEL_CONFIG := skomer_defconfig
TARGET_USE_ST_ERICSSON_KERNEL := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/skomer/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_HWCOMPOSER := false
#BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Camera
#BOARD_USES_PROPRIETARY_LIBCAMERA := true
#COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# Bluetooth
BOARD_HAVE_BLUETOOTH := false
#BOARD_HAVE_BLUETOOTH_BCM := true
#USE_BLUETOOTH_SAP := true

# Wifi
#BOARD_WLAN_DEVICE                := bcmdhd
#BOARD_WLAN_DEVICE_REV            := bcm4334_B2
#WPA_SUPPLICANT_VERSION           := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER             := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
#WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
#WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin_b2"
#WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin_b2"
#WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin_b2"
#WIFI_DRIVER_MODULE_NAME          := "dhd"
#WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt_GPIO4"
#WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt_GPIO4"
#WIFI_BAND                        := 802_11_ABG
#BOARD_HAVE_SAMSUNG_WIFI          := true

# Audio
BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_ALSA_AUDIO := true

# USB Mounting
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# RIL
#BOARD_USES_LIBSECRIL_STUB := true
#BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Recovery
# uncomment this to use the stock kernel for recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/skomer/recovery/recovery_kernel
TARGET_RECOVERY_INITRC = device/samsung/skomer/recovery/root/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/skomer/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file
