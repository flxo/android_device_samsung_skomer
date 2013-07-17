-include device/samsung/u8500-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/skomer/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/skomer/bluetooth


BOARD_RIL_CLASS := ../../../device/samsung/skomer/ril/

# Kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := "no_console_suspend=1 console=null"

# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1287340032



# Experimental testing for flickering
BOARD_EGL_NEEDS_LEGACY_FB := true


# EXPERIMENTAL SOUND
# BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_LEGACY_NL80211_STA_EVENTS  := true
BOARD_HAVE_SAMSUNG_WIFI := true

# Platform
TARGET_SOC := u8500
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true


# Kernel
#TARGET_KERNEL_SOURCE := kernel/samsung/u8500
TARGET_KERNEL_SOURCE := kernel/samsung/skomer
TARGET_KERNEL_CONFIG := skomer_defconfig


# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true


# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/skomer/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/skomer/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/skomer/rootdir/recovery.rc
# Assert
TARGET_OTA_ASSERT_DEVICE := skomer,s7710,GT-S7710


# Inherit from the proprietary version
-include vendor/samsung/u8500-common/BoardConfigVendor.mk
