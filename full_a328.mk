# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/a328/a328.mk)

LOCAL_PATH := device/lenovo/a328

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=4.4.4/KTU84Q/feo_nl:eng/release-keys PRIVATE_BUILD_DESC="a328-eng 4.4.4 KTU84Q feo_nl release-keys"

