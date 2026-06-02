# Flutter
set -x FLUTTER_ROOT /usr/lib/flutter
set -x PATH $FLUTTER_ROOT/bin $PATH

# Java 24
set -gx JAVA_HOME /usr/lib/jvm/java-26-openjdk

# Google chrome
set -gx CHROME_EXECUTABLE /usr/bin/chromium

# Android SDK
set -gx ANDROID_HOME /opt/android-sdk
set -gx ANDROID_SDK_ROOT /opt/android-sdk
set -gx ANDROID_AVD_HOME $HOME/.android/avd

# Flutter / Pub
set -gx PUB_CACHE $HOME/.pub-cache

# PATH additions
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path /opt/flutter/bin
