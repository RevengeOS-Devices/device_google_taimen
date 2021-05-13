# Inherit some common RevengeOS stuff
$(call inherit-product, vendor/revengeos/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Device identifiers
PRODUCT_DEVICE := taimen
PRODUCT_NAME := revengeos_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google
PRODUCT_RELEASE_NAME := taimen
PRODUCT_RESTRICT_VENDOR_FILES := false

# Override Fingerprint for Safetynet passing
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210505.003 7255357 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys

# RevengeOS maintainer
REVENGEOS_BUILDTYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1440
