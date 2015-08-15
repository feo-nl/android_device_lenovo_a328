# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/platform.xml:system/etc/permissions/platform.xml \
    $(LOCAL_PATH)/configs/mac_permissions.xml:system/etc/security/mac_permissions.xml

DEVICE_PACKAGE_OVERLAYS := device/lenovo/a328/overlay

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg

# GPS
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/agps_profiles_conf.xml:system/etc/agps_profiles_conf.xml \

# Ril
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/ril/oper.lis:system/etc/ril/oper.lis

# WiFi
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
     $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
     $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
     $(LOCAL_PATH)/configs/wifi/throttle.sh:system/etc/throttle.sh

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/btconfig.xml:system/etc/bluetooth/btconfig.xml \
    $(LOCAL_PATH)/configs/bt_stack.conf:system/etc/bluetooth/bt_stack.conf

# Audio	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/permissions/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf
#    $(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Thermal
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf
	
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.mt6582.rc:root/init.mt6582.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/init.ssd.rc:root/init.ssd.rc \
    $(LOCAL_PATH)/rootdir/root/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/root/init.protect.rc:root/init.protect.rc \
#    $(LOCAL_PATH)/rootdir/root/init.xlog.rc:root/init.xlog.rc \
#    $(LOCAL_PATH)/rootdir/root/factory_init.rc:root/factory_init.rc \
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6582:root/fstab.mt6582
#    $(LOCAL_PATH)/rootdir/root/recovery.fstab:root/etc/recovery.fstab \

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    sys.usb.config=mtp,adb \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.timezone=Europe/Moscow \
    persist.sys.language=ru \
    persist.sys.country=RU \
    persist.sys.usb.config=mtp
	
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    setup_fs \
    e2fsck
	
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES += Torch

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lenovo/a328/a328-vendor.mk)
