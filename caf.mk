# Packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    SnapdragonGallery \
    SnapdragonMusic \
    SnapdragonCamera \
    Launcher3 \
    LatinIME \
    messaging \
    Stk

# Utils
PRODUCT_PACKAGES += \
    curl \
    powertop

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files, *, caf_manifest/prebuilt, system)

# Props
ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false
