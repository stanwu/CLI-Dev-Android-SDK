#!/bin/bash

if [ $UID -gt 0 ]; then
	echo "You need run as root"
	exit 1
fi

# Version of tools
export GRADLE_VERSION=6.3
export ANDROID_API_LEVEL=29
export ANDROID_BUILD_TOOLS_LEVEL=29.0.3
export ANDROID_NDK_VERSION=21.1.6352462

sudo apt update -qq && apt install -qq -y unzip openjdk-8-jdk vim git unzip libglu1 libpulse-dev libasound2 libc6  libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxi6  libxtst6 libnss3 wget

sudo wget -q https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -P /tmp \
&& unzip -q -d /opt/gradle /tmp/gradle-${GRADLE_VERSION}-bin.zip \
&& mkdir /opt/gradlew \
&& /opt/gradle/gradle-${GRADLE_VERSION}/bin/gradle wrapper --gradle-version ${GRADLE_VERSION} --distribution-type all -p /opt/gradlew  \
&& /opt/gradle/gradle-${GRADLE_VERSION}/bin/gradle wrapper -p /opt/gradlew

sudo mkdir /opt/android \
&& mkdir /opt/android/cmdline-tools \
&& wget -q 'https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip' -P /tmp \
&& unzip -q -d /opt/android/cmdline-tools /tmp/commandlinetools-linux-6200805_latest.zip \
&& yes Y | /opt/android/cmdline-tools/tools/bin/sdkmanager --install "build-tools;${ANDROID_BUILD_TOOLS_LEVEL}" "platforms;android-${ANDROID_API_LEVEL}" "platform-tools" "ndk;${ANDROID_NDK_VERSION}" \
&& yes Y | /opt/android/cmdline-tools/tools/bin/sdkmanager --licenses

export GRADLE_HOME=/opt/gradle/gradle-$GRADLE_VERSION
export ANDROID_HOME=/opt/android
export ANDROID_NDK_HOME=${ANDROID_HOME}/ndk/${ANDROID_NDK_VERSION}
export PATH="$PATH:$GRADLE_HOME/bin:/opt/gradlew:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/tools/bin:$ANDROID_HOME/platform-tools:${ANDROID_NDK_HOME}"
export LD_LIBRARY_PATH="$ANDROID_HOME/emulator/lib64:$ANDROID_HOME/emulator/lib64/qt/lib"
