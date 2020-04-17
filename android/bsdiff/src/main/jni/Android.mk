LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := bzip2
BZIP2_ROOT_PATH := ${LOCAL_PATH}/../../../../../bzip2-1.0.8/
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