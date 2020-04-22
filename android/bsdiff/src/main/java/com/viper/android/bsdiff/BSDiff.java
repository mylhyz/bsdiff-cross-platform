package com.viper.android.bsdiff;

import android.util.Log;

/**
 * @author mylhyz on 2020/4/17.
 * 处理bsdiff
 */
public class BSDiff {
    private static final String TAG = "BSDiff";

    static {
        System.loadLibrary("bzip2");
        System.loadLibrary("bsdiff");
        System.loadLibrary("bsdiff_jni");
    }

    public static int diff(String oldFilePath, String newFilePath, String patchFilePath) {
        int result = nativeDiff(oldFilePath, newFilePath, patchFilePath);
        Log.i(TAG, "BSDiff_diff result=" + result);
        return result;
    }

    public static int patch(String oldFilePath, String newFilePath, String patchFilePath) {
        int result = nativePatch(oldFilePath, newFilePath, patchFilePath);
        Log.i(TAG, "BSDiff_patch result=" + result);
        return result;
    }

    private static native int nativeDiff(String oldFilePath, String newFilePath, String patchFilePath);

    private static native int nativePatch(String oldFilePath, String newFilePath, String patchFilePath);
}
