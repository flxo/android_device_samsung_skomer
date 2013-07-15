/*
 * Copyright (C) 2012 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings.device;

import com.cyanogenmod.settings.device.R;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;

public class ScreenFragmentActivity extends PreferenceFragment {

    private static final String TAG = "GalaxySAdvance_Settings_Screen";

    private static final String FILE_TOUCHKEY_BRIGHTNESS = "/sys/class/leds/button-backlight/brightness";    
    private static final String FILE_FB_DELAY = "/sys/module/fbearlysuspend/parameters/fbdelay";

    
    private TouchscreenSensitivity mTouchscreenSensitivity;
    private TouchkeyTimeout mTouchkeyTimeout;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.screen_preferences);
        PreferenceScreen prefSet = getPreferenceScreen();

        mTouchscreenSensitivity = (TouchscreenSensitivity) findPreference(DeviceSettings.KEY_TOUCHSCREEN_SENSITIVITY);
        mTouchscreenSensitivity.setEnabled(TouchscreenSensitivity.isSupported());
        
        mTouchkeyTimeout = (TouchkeyTimeout) findPreference(DeviceSettings.KEY_TOUCHKEY_TIMEOUT);
        mTouchkeyTimeout.setEnabled(TouchkeyTimeout.isSupported());

        if (((CheckBoxPreference)prefSet.findPreference(DeviceSettings.KEY_TOUCHKEY_LIGHT)).isChecked()) {
            prefSet.findPreference(DeviceSettings.KEY_TOUCHKEY_TIMEOUT).setEnabled(true);
        } else {
            prefSet.findPreference(DeviceSettings.KEY_TOUCHKEY_TIMEOUT).setEnabled(false);
        }
        
        if (((CheckBoxPreference)prefSet.findPreference(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY)).isChecked()) {
            prefSet.findPreference(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY_MS).setEnabled(true);
        } else {
            prefSet.findPreference(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY_MS).setEnabled(false);
        }
    }
    
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {

        String key = preference.getKey();

        Log.w(TAG, "key: " + key);

        if (key.equals(DeviceSettings.KEY_TOUCHKEY_LIGHT)) {
            if (((CheckBoxPreference)preference).isChecked()) {
                //Utils.writeValue(FILE_TOUCHKEY_DISABLE, "0");
                Utils.writeValue(FILE_TOUCHKEY_BRIGHTNESS, "1");
                preferenceScreen.findPreference(DeviceSettings.KEY_TOUCHKEY_TIMEOUT).setEnabled(true);
            } else {
                //Utils.writeValue(FILE_TOUCHKEY_DISABLE, "1");
                Utils.writeValue(FILE_TOUCHKEY_BRIGHTNESS, "0");
                preferenceScreen.findPreference(DeviceSettings.KEY_TOUCHKEY_TIMEOUT).setEnabled(false);
            }
        }
        
        if(key.equals(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY)) {
        	 if (((CheckBoxPreference)preference).isChecked()) {
        	        Utils.writeValue(FILE_FB_DELAY, "1");
                 preferenceScreen.findPreference(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY_MS).setEnabled(true);
             } else {
                 Utils.writeValue(FILE_FB_DELAY, "0");
                 preferenceScreen.findPreference(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY_MS).setEnabled(false);
             }
        }

        return true;
    }

    public static boolean isSupported(String FILE) {
        return Utils.fileExists(FILE);
    }

    public static void restore(Context context) {
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        
        boolean light = sharedPrefs.getBoolean(DeviceSettings.KEY_TOUCHKEY_LIGHT, true);
        Utils.writeValue(FILE_TOUCHKEY_BRIGHTNESS, light ? "1" : "0");
        
        boolean fbdelay = sharedPrefs.getBoolean(DeviceSettings.KEY_FB_EARLYSUSPEND_DELAY, true);
        Utils.writeValue(FILE_FB_DELAY, fbdelay ? "1" : "0");
    }
}
