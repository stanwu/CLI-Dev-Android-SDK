# Template Remote Dev App Android SDK for CLI developer

Template for Android Development Environment
You don't need to install any GUI or Desktop environment for your Android app development environment.

> You can develop an Android app remotely from anywhere; all you need is a browser or SSH.

### How to use this template?

**Method 1. Quick method:**

> NOTICE: Please click on the right-side copy icon to copy this super long command

```sh
curl -s "https://raw.githubusercontent.com/stanwu/CLI-Dev-Android-SDK/main/install_android-sdk.sh" | bash
```

**Method 2. Integrate into project:**

You just need to copy **install_android-sdk.sh** into your Android App Project's source code. 
or just open this project with Codespaces, Gitpod or git clone via SSH, it's simple!

**Screenshot demo**

*Remote Development using Web Browser*

![Screenshot Web](https://i.imgur.com/9YogPgO.png)

*Remote Development using SSH*

![Screenshot SSH](https://i.imgur.com/TwnNktE.png)

### Support Platforms (Tested 2023/12/17)

- GitHub Codespaces
- Gitpod
- GCP Ubuntu 20.04 LTS
- GCP Ubuntu 22.04 LTS

**Build Development Environment**

```sh
./install_android-sdk.sh
```

> NOTICE: You need close current bash or zsh then open again after installed

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
