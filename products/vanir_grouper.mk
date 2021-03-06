#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := Faux Kernel v013u IN THE H1ZNOUSE

PRODUCT_PACKAGES += \
    Camera \
    LiveWallpapersPicker

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-GROUPER

    
# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Copy grouper specific prebuilt files
## FIX ME: bootanimation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/smalltab/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats_bravia.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# Setup device specific product configuration.
PRODUCT_NAME := vanir_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.2.2/JDQ39E/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39E 405518 release-keys" BUILD_NUMBER=405518
