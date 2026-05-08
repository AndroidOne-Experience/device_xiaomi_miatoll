LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkg
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES += \
    WeatherPixelPrebuilt_10006113 \
    LocationHistoryPrebuilt \
    talkback \
    AndroidAutoStubPrebuilt \
    RelationshipsPrebuilt-301 \
    AccessibilityMenu \
    PrebuiltGmail \
    Maps \
    RecorderPrebuilt_725581069 \
    Drive \
	SafetyHubPrebuilt \
    YouTube \
    YouTubeMusicPrebuilt

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)