# Privacy Browser copyright Â© 2015-2021 Soren Stoutner <soren@stoutner.com>.
#
# Privacy Browser is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Privacy Browser is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Privacy Browser.  If not, see <http://www.gnu.org/licenses/>.#
#
# The source code is available from git.stoutner.com.
#
# Documentation of the commands in this file can be found at
# http://android.mk and
# https://developer.android.com/ndk/guides/android_mk.html

# Define the `LOCAL_PATH` variable.
LOCAL_PATH := $(call my-dir)

# Clear the build variables.
include $(CLEAR_VARS)

# Name the module that will be compiled into the ROM.
LOCAL_MODULE := privacy-browser

# The name of the source APK.
LOCAL_SRC_FILES := PrivacyBrowser3.6.1.apk

# Integrate Privacy Browser as a low privilege app under `/system/app` instead of high privilege app under `/system/priv-app`.
LOCAL_MODULE_CLASS := APPS

# Append the correct suffix `.apk` to the app.
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

# Keep the current package signature, which will allow users to upgrade Privacy Browser with packages signed by Stoutner.
LOCAL_CERTIFICATE := PRESIGNED

# Replace the `Browser` and `Browser2` packages with Privacy Browser.
LOCAL_OVERRIDES_PACKAGES := Browser Browser2

# Indicate that this is an optional build (as opposed to `users`, `eng`, or `tests`).
LOCAL_MODULE_TAGS := optional

# Tell the compiler to use the prebuilt APK.
include $(BUILD_PREBUILT)

