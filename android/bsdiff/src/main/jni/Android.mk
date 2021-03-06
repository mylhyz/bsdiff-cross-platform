LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := bzip2
BZIP2_ROOT_PATH := ${LOCAL_PATH}/../../../../../bzip2-1.0.8/
LOCAL_EXPORT_C_INCLUDES := $(BZIP2_ROOT_PATH)
LOCAL_SRC_FILES := ${BZIP2_ROOT_PATH}/bzlib.h   \
                   ${BZIP2_ROOT_PATH}/bzlib.c   \
                   ${BZIP2_ROOT_PATH}/bzlib_private.h   \
                   ${BZIP2_ROOT_PATH}/compress.c    \
                   ${BZIP2_ROOT_PATH}/blocksort.c   \
                   ${BZIP2_ROOT_PATH}/huffman.c \
                   ${BZIP2_ROOT_PATH}/decompress.c  \
                   ${BZIP2_ROOT_PATH}/crctable.c   \
                   ${BZIP2_ROOT_PATH}/randtable.c
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := bsdiff
LOCAL_LDLIBS := -llog
LOCAL_SHARED_LIBRARIES := bzip2
ROOT_PATH := ${LOCAL_PATH}/../../../../../src/
LOCAL_EXPORT_C_INCLUDES := $(ROOT_PATH)
LOCAL_SRC_FILES := ${ROOT_PATH}/android_jni_compat_err.h \
                   ${ROOT_PATH}/bsdiff.h \
                   ${ROOT_PATH}/bsdiff_jni_compat.c \
                   ${ROOT_PATH}/bspatch.h \
                   ${ROOT_PATH}/bspatch_jni_compat.c
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := bsdiff_jni
LOCAL_SHARED_LIBRARIES := bsdiff bzip2
LOCAL_SRC_FILES := ${LOCAL_PATH}/bsdiff_jni.cc
include $(BUILD_SHARED_LIBRARY)