LOCAL_PATH := device/samsung/gts210wifi

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := lineage_exynos5433_gts210wifi_defconfig

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210wifi,gts210wifixx

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk
