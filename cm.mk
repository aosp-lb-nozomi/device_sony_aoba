$(call inherit-product, device/sony/aoba/full_aoba.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT28h BUILD_FINGERPRINT=SEMC/LT28h_1265-2665/LT28h:4.1.2/6.2.B.0.211/LL__zg:user/release-keys PRIVATE_BUILD_DESC="LT28h-user 4.1.2 6.2.B.0.211 LL__zg test-keys"

PRODUCT_NAME := cm_aoba
PRODUCT_DEVICE := aoba
