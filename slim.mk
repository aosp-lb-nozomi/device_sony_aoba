# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

$(call inherit-product, device/sony/nozomi/full_aoba.mk)

# Inherit slim common GSM stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Inherit slim common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

#Boot Animation
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
	
#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

#Extra Device info
PRODUCT_PROPERTY_OVERRIDES += \
	ro.device.cpu=Snapdragon_S3 \
	ro.device.gpu=Adreno_220 \
	ro.device.rear_cam=12 MP \
	ro.device.front_cam=1.3 MP \
	ro.device.screen_res=720x1280

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT28h BUILD_FINGERPRINT=SEMC/LT28h_1265-2665/LT28h:4.1.2/6.2.B.0.211/LL__zg:user/release-keys PRIVATE_BUILD_DESC="LT28h-user 4.1.2 6.2.B.0.211 LL__zg test-keys"

PRODUCT_NAME := slim_aoba
PRODUCT_DEVICE := aoba
# Release name
PRODUCT_RELEASE_NAME := SLIM-LT28