package com.viper.android.bsdiff;

import android.util.Log;

/**
 * @author mylhyz on 2020/4/17.
 * 处理bsdiff
 */
public class BSDiff {
    static {
        System.loadLibrary("bzip2");
        System.loadLibrary("bsdiff");
        System.loadLibrary("bsdiff_jni");
    }

    public static void diff(String oldFilePath, String newFilePath, String patchFilePath) {
        int result = nativeDiff(oldFilePath, newFilePath, patchFilePath);
        Log.i("VIPER", "BSDiff_diff result=" + result);
    }

    public static void patch(String oldFilePath, String newFilePath, String patchFilePath) {
        int result = nativePatch(oldFilePath, newFilePath, patchFilePath);
        Log.i("VIPER", "BSDiff_patch result=" + result);
    }

    private static native int nativeDiff(String oldFilePath, String newFilePath, String patchFilePath);

    private static native int nativePatch(String oldFilePath, String newFilePath, String patchFilePath);
}
