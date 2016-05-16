package com.qa.emma;
 
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
 
import java.lang.Exception;
import java.lang.reflect.Method;
import java.lang.reflect.InvocationTargetException;
 
public class InstrumentedReceiver extends BroadcastReceiver {
    public static String TAG = "EMMACoverageReport";
    private static final String DEFAULT_COVERAGE_FILE_PATH = "/mnt/sdcard/coverage.ec";
 
    private void reportEmmaError(Exception e) {
        reportEmmaError("", e);
    }
 
    private void reportEmmaError(String hint, Exception e) {
        String msg = "Failed to generate emma coverage. " + hint;
        Log.e(TAG, msg, e);
    }
    private void generateCoverageReport() {
        Log.d(TAG, "generateCoverageReport()");
        java.io.File coverageFile = new java.io.File(DEFAULT_COVERAGE_FILE_PATH);
 
        try {
            Class<?> emmaRTClass = Class.forName("com.vladium.emma.rt.RT");
            Method dumpCoverageMethod = emmaRTClass.getMethod(
                    "dumpCoverageData", coverageFile.getClass(), boolean.class,
                    boolean.class);
            dumpCoverageMethod.invoke(null, coverageFile, true, false);
        } catch (ClassNotFoundException e) {
            reportEmmaError("Emma.jar not in the class path?", e);
        } catch (Exception e){
            reportEmmaError(e);
        }
    }
    @Override
    public void onReceive(Context context, Intent intent) {
        // TODO Auto-generated method stub
        generateCoverageReport();
    }
}
