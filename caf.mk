PRODUCT_PACKAGES += \
    BluetoothExt \
    SnapdragonGallery \
    SnapdragonMusic \
    SnapdragonCamera \
    Launcher3 \
    LatinIME \
    messaging

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files, *, caf_manifest/prebuilt, system)
