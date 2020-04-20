#include <string>

#include <jni.h>

extern "C"
{
#include "bsdiff.h"
#include "bspatch.h"
}

const std::string FAKE_BSDIFF_PATH = "./bsdiff";
const std::string FAKE_BSPATCH_PATH = "./bspatch";

extern "C"
JNIEXPORT jint

JNICALL
Java_com_viper_android_bsdiff_BSDiff_nativeDiff(JNIEnv *env, jclass clazz, jstring old_file_path,
                                                jstring new_file_path, jstring patch_file_path) {
    const char *oldFilePath = env->GetStringUTFChars(old_file_path, nullptr);
    const char *newFilePath = env->GetStringUTFChars(new_file_path, nullptr);
    const char *patchFilePath = env->GetStringUTFChars(patch_file_path, nullptr);
    int argc = 4;
    char **argv = new char *[5]{const_cast<char *>(FAKE_BSDIFF_PATH.c_str()),
                                const_cast<char *>(oldFilePath),
                                const_cast<char *>(newFilePath),
                                const_cast<char *>(patchFilePath)};
    return BSDiff_diff(argc, argv);
}

extern "C"
JNIEXPORT jint

JNICALL
Java_com_viper_android_bsdiff_BSDiff_nativePatch(JNIEnv *env, jclass clazz, jstring old_file_path,
                                                 jstring new_file_path, jstring patch_file_path) {
    // TODO: implement nativePatch()
    const char *oldFilePath = env->GetStringUTFChars(old_file_path, nullptr);
    const char *newFilePath = env->GetStringUTFChars(new_file_path, nullptr);
    const char *patchFilePath = env->GetStringUTFChars(patch_file_path, nullptr);
    int argc = 4;
    char **argv = new char *[5]{const_cast<char *>(FAKE_BSPATCH_PATH.c_str()),
                                const_cast<char *>(oldFilePath),
                                const_cast<char *>(newFilePath),
                                const_cast<char *>(patchFilePath)};
    return BSDiff_patch(argc, argv);
}