#ifndef __BSDIFF_ANDROID_JNI_ERR_H__
#define __BSDIFF_ANDROID_JNI_ERR_H__

#include <jni.h>
#include <android/log.h>

static int err(int status, char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    __android_log_print(ANDROID_LOG_ERROR, "bspatch_err", fmt, args);
    va_end(args);
    return status;
}

static int errx(int status, char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    __android_log_print(ANDROID_LOG_ERROR, "bspatch_errx", fmt, args);
    va_end(args);
    return status;
}

#endif //__BSDIFF_ANDROID_JNI_ERR_H__
