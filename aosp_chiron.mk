# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from chiron device
$(call inherit-product, $(LOCAL_PATH)/full_chiron.mk)
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

#GApps
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := aosp_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="chiron" \
    PRODUCT_NAME="chiron" \
    PRIVATE_BUILD_DESC="chiron-user 8.0.0 OPR1.170623.027 V9.5.4.0.ODEMIFA release-keys"

BUILD_FINGERPRINT := Xiaomi/chiron/chiron:8.0.0/OPR1.170623.027/V9.5.4.0.ODEMIFA:user/release-keys

TARGET_VENDOR := Xiaomi

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
