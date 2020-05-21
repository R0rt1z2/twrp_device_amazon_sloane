LOCAL_PATH := device/amazon/sloane

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/amazon/sloane/device.mk)

PRODUCT_NAME := omni_sloane
PRODUCT_DEVICE := sloane
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    sys.usb.config=mtp,adb \
    ro.allow.mock.location=0 \
    service.adb.tcp.port=5555 \
    twrp.usb.mode=1 \
    network.eth0.ready=false \

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuilt/zImage:kernel

