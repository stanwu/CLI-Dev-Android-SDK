# Template-Dev-Android-SDK

Template for Android Development Environment (for CLI developer)
You don't need to install any GUI or Desktop environment for your Android app development environment. 

### How to use this template?

You just need to copy **install_android-sdk.sh** and **install_android-sdk.bashrc**, these two files, into your Android App Project's source code. It's simple!

Support Platforms

- GCP
- Gitpod
- GitHub Codespaces
- Ubuntu 20.04 LTS
- Ubuntu 22.04 LTS

Build Development Environment

```sh
sudo ./install_android-sdk.sh
cd /opt
sudo chown -R $USER android
```

Add below to .bashrc or .zshrc

```sh
export ANDROID_HOME="/opt/android"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/tools/bin:$ANDROID_HOME/platform-tools:${ANDROID_NDK_HOME}"
export LD_LIBRARY_PATH="$ANDROID_HOME/emulator/lib64:$ANDROID_HOME/emulator/lib64/qt/lib"
```

For GitHub Codepsace Java issue

```sh
cd /home/codespace/java
rm current && ln -sf /usr/lib/jvm/java-11-openjdk-amd64 current
```

Try to build Hello World to make sure development environment is working now

```sh
cd ~
git clone https://github.com/chiuki/android-hello-world.git
cd android-hello-world
./gradlew tasks
./gradlew assembledebug
```

Check build result

```sh
cd app/build/outputs/apk/debug/
ls -l
```
