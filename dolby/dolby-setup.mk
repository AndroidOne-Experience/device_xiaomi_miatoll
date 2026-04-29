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

# daxService (Lenovo)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/soundfx/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml \
    $(LOCAL_PATH)/soundfx/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/soundfx/system_ext/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-whitelist-com.dolby.daxservice.xml

PRODUCT_PACKAGES += \
    daxService

# DAXUI (Lenovo)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/soundfx/system_ext/etc/permissions/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxappui.xml \
    $(LOCAL_PATH)/soundfx/system_ext/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml

PRODUCT_PACKAGES += \
	DaxUI