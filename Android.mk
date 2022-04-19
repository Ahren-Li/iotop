LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-c-files-under, src)

LOCAL_CFLAGS := \
	-std=gnu90 \
	-DNDEBUG

LOCAL_CFLAGS += \
		-Wno-unused-parameter \
        -Wno-unused-variable \
        -Wno-format \
        -Wno-constant-conversion \
        -fno-stack-protector \
        -mno-stackrealign \
        -D_FORTIFY_SOURCE=2

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/src \
	external/libncurses \
	external/libncurses/include \


LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := iotop-lili

LOCAL_WHOLE_STATIC_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)