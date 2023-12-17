#!/bin/bash

# Written by Stan Ht. Wu, github-uh87y2@stanwu.org
# About cmdline-tools folder issue:
# https://stackoverflow.com/questions/60440509/android-command-line-tools-sdkmanager-always-shows-warning-could-not-create-se

export ANDROID_HOME="${HOME}/android/sdk"
export ANDROID_API_LEVEL=29
export ANDROID_BUILD_TOOLS_LEVEL="29.0.3"
export ANDROID_NDK_VERSION="21.1.6352462"
export ANDROID_NDK_HOME="${ANDROID_HOME}/ndk/${ANDROID_NDK_VERSION}"

# Useless for now
export GRADLE_VERSION="7.4"
export GRADLE_HOME="/opt/gradle/gradle-$GRADLE_VERSION"

function envrc() {
echo '
export ANDROID_HOME="${HOME}/android/sdk"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH="$PATH:${JAVA_HOME}/bin:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/cmdline-tools/tools/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/emulator"
'
}

# Dump Env
echo "List of SDK versions ready for installation:"
echo "============================================"
echo ANDROID_HOME=${ANDROID_HOME}
echo ANDROID_API_LEVEL=${ANDROID_API_LEVEL}
echo ANDROID_BUILD_TOOLS_LEVEL=${ANDROID_BUILD_TOOLS_LEVEL}
echo ANDROID_NDK_VERSION=${ANDROID_NDK_VERSION}

sleep 3

sudo apt update -qq 
sudo apt install -qq -y unzip openjdk-11-jdk vim git unzip libglu1 libpulse-dev libasound2 libc6 \
						libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxi6 \
						libxtst6 libnss3 wget

if [ -d ${ANDROID_HOME} ]; then
	echo "Folder ${ANDROID_HOME} had been exist!"
	exit 1
else
	mkdir -p ${ANDROID_HOME}/cmdline-tools
	echo "Download SDK"
	wget -q "https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip" -P /tmp \
	&& echo "Installation SDK" \
	&& unzip -q -d ${ANDROID_HOME}/cmdline-tools /tmp/commandlinetools-linux-6200805_latest.zip \
	&& yes Y | ${ANDROID_HOME}/cmdline-tools/tools/bin/sdkmanager --install "build-tools;${ANDROID_BUILD_TOOLS_LEVEL}" "platforms;android-${ANDROID_API_LEVEL}" "platform-tools" \
	&& yes Y | ${ANDROID_HOME}/cmdline-tools/tools/bin/sdkmanager --licenses

	echo "This template is compatible with Java 11"
	javac -version
	which javac
fi

[ -f ~/.bashrc ] && \
if ! grep -q "ANDROID_HOME" ~/.bashrc; then
   envrc >> ~/.bashrc
fi

[ -f ~/.zshrc ] && \
if ! grep -q "ANDROID_HOME" ~/.zshrc; then
   envrc >> ~/.zshrc
fi

