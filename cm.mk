# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/a328/full_a328.mk)


PRODUCT_NAME := cm_a328
PRODUCT_DEVICE := a328
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_MODEL := A328
