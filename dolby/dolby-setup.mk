# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/dolby/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
	$(DEVICE_PATH)/dolby/hidl/dolby_framework_matrix.xml

# DAX config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/soundfx/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# Dolby media codecs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml

# Dolby props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.dolby.ds2.enabled=false \
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1
