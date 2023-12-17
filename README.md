# Template Dev Android SDK for CLI developer

Template for Android Development Environment
You don't need to install any GUI or Desktop environment for your Android app development environment. 

### How to use this template?

You just need to copy **install_android-sdk.sh** and **install_android-sdk.bashrc**, these two files, into your Android App Project's source code. 
or just open this project with Codespaces or Gitpod, it's simple!

Support Platforms:

- GitHub Codespaces
- Gitpod
- GCP Ubuntu 20.04 LTS
- GCP Ubuntu 22.04 LTS

Build Development Environment

```sh
sudo ./install_android-sdk.sh
```

**!!! NOTICE: You need close current bash or zsh then open again after installed**

For GitHub Codepsace Java 11 issue, please check your Java version

```sh
cd /home/codespace/java
rm current && ln -sf /usr/lib/jvm/java-11-openjdk-amd64 current
```

Try to build Hello World to make sure development environment is ready now

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
