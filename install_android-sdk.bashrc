
export GRADLE_VERSION=6.3
export ANDROID_API_LEVEL=29
export ANDROID_BUILD_TOOLS_LEVEL=29.0.3
export ANDROID_NDK_VERSION=21.1.6352462
export GRADLE_HOME=/opt/gradle/gradle-$GRADLE_VERSION
export ANDROID_HOME=/opt/android
export ANDROID_NDK_HOME=${ANDROID_HOME}/ndk/${ANDROID_NDK_VERSION}
export PATH="$PATH:$GRADLE_HOME/bin:/opt/gradlew:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/tools/bin:$ANDROID_HOME/platform-tools:${ANDROID_NDK_HOME}"
export LD_LIBRARY_PATH="$ANDROID_HOME/emulator/lib64:$ANDROID_HOME/emulator/lib64/qt/lib"
