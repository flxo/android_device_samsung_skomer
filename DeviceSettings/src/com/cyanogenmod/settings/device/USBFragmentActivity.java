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

import android.content.Context;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;

import com.cyanogenmod.settings.device.R;

public class USBFragmentActivity extends PreferenceFragment {

    private static final String TAG = "GalaxySAdvance_Settings_Usb";
    private final String FILE = "/sys/kernel/abb-regu/VOTG";

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.usb_preferences);

        PreferenceScreen prefSet = getPreferenceScreen();
        
        prefSet.findPreference(DeviceSettings.KEY_AC_CURRENCY).setEnabled(ChargerCurrency.isSupported());
        prefSet.findPreference(DeviceSettings.KEY_USB_CURRENCY).setEnabled(UsbCurrency.isSupported());
        prefSet.findPreference(DeviceSettings.KEY_USB_OTG_POWER).setEnabled(isSupported(FILE));

    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {

        //String boxValue;
        String key = preference.getKey();

        Log.w(TAG, "key: " + key);

        return true;
    }

    public static boolean isSupported(String FILE) {
        return Utils.fileExists(FILE);
    }

    public static void restore(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context);
    }
}
