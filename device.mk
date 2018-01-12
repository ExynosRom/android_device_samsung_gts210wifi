LOCAL_PATH := device/samsung/gts210wifi

# Ramdisk
PRODUCT_PACKAGES += \
    ueventd.universal5433.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Hardware rotation
PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.hwrotation=270

# Wifi model
PRODUCT_PROPERTY_OVERRIDES += \
ro.radio.noril=yes \
ro.carrier=wifi-only

# call the proprietary setup
$(call inherit-product, vendor/samsung/gts210wifi/gts210wifi-vendor.mk)
