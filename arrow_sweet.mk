# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
ARROW_GAPPS := true
TARGET_INCLUDE_PIXEL_CHARGER := true

# Additional Pixel stuffs
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_SHIP_PREBUILT_APEX := true

PRODUCT_NAME := arrow_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K6G
PRODUCT_MANUFACTURER := Xiaomi

TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-google

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_eea-user 12 RKQ1.210614.002 V13.0.13.0.SKFEUXM release-keys" \
    PRODUCT_BRAND=Redmi \
    TARGET_DEVICE=sweet \
    PRODUCT_MANUFACTURE=Xiaomi \
    PRODUCT_MODEL="M2101K6G" \
    TARGET_PRODUCT=sweet \
    PRODUCT_SYSTEM_BRAND=Redmi \
    PRODUCT_SYSTEM_DEVICE=sweet \
    PRODUCT_SYSTEM_MANUFACTURER=Xiaomi \
    PRODUCT_SYSTEM_MODEL="M2101K6G" \
    PRODUCT_SYSTEM_NAME=sweet

BUILD_FINGERPRINT := Redmi/sweet_eea/sweet:12/RKQ1.210614.002/V13.0.13.0.SKFEUXM:user/release-keys

