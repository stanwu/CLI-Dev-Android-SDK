# Template-Dev-Android-SDK

Template for Android Development Environment (for CLI developer)
You don't need to install any GUI or Desktop environment for your Android app development environment. 

**This template currently does not support Codespace, but it supports Gitpod and Google Cloud Platform.**

### How to use this template?

You just need to copy **install_android-sdk.sh** and **install_android-sdk.bashrc**, these two files, into your Android App Project's source code. It's simple!

```sh
sudo ./install_android-sdk.sh
cat ./install_android-sdk.bashrc >> ~/.bashrc
cd /opt
sudo chown -R $USER android gradle gradlew
```

Test commands to make sure works

```sh
cd ~/
gradle
gradlew
```

Try to build Hello World to make sure development environment is working now

```sh
git clone https://github.com/francohorita/android-hello-world.git
cd android-hello-world
gradlew tasks
gradlew assembledebug
```

Check build result

```sh
cd app/build/outputs/apk/debug/
ls -l
```

For GitHub Codepsace Java issue

```sh
cd /home/codespace/java
rm current && ln -sf /home/codespace/java/17.0.9-ms current
```