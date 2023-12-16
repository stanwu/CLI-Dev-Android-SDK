#!/bin/bash

# Written by Stan Ht. Wu (github-uh87y2@stanwu.org)

# Version of tools
. ./install_android-sdk.bashrc 

# Dump Env
echo "List of SDK versions ready for installation:"
echo "============================================"
echo GRADLE_VERSION=$GRADLE_VERSION
echo ANDROID_API_LEVEL=$ANDROID_API_LEVEL
echo ANDROID_BUILD_TOOLS_LEVEL=$ANDROID_BUILD_TOOLS_LEVEL
echo ANDROID_NDK_VERSION=$ANDROID_NDK_VERSION

if [ $UID -gt 0 ]; then
	echo "You need run as root"
	exit 1
fi

apt update -qq && apt install -qq -y unzip openjdk-11-jdk vim git unzip libglu1 libpulse-dev libasound2 libc6  libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxi6  libxtst6 libnss3 wget

mkdir /opt/android \
&& mkdir /opt/android/cmdline-tools \
&& wget -q 'https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip' -P /tmp \
&& unzip -q -d /opt/android/cmdline-tools /tmp/commandlinetools-linux-6200805_latest.zip \
&& yes Y | /opt/android/cmdline-tools/tools/bin/sdkmanager --install "build-tools;${ANDROID_BUILD_TOOLS_LEVEL}" "platforms;android-${ANDROID_API_LEVEL}" "platform-tools" \
&& yes Y | /opt/android/cmdline-tools/tools/bin/sdkmanager --licenses

echo "This template is compatible with Java versions below 17.0.9."
javac -version
which javac
