#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jfltetmo

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_jfltetmo
PRODUCT_DEVICE := jfltetmo

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.2.2/JDQ39/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.2.2 JDQ39 M919UVUAMDB release-keys"
