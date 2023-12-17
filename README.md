# Template Remote Dev App Android SDK for CLI developer

Template for Android Development Environment
You don't need to install any GUI or Desktop environment for your Android app development environment.

> You can develop an Android app remotely from anywhere; all you need is a browser or SSH.

### How to use this template?

You just need to copy **install_android-sdk.sh** and **install_android-sdk.bashrc**, these two files, into your Android App Project's source code. 
or just open this project with Codespaces, Gitpod, VScode Server or SSH, it's simple!

![Screenshot](https://github-production-user-asset-6210df.s3.amazonaws.com/121381/291022047-c148fae8-a1f7-4973-92da-f60550359044.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231217%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231217T011234Z&X-Amz-Expires=300&X-Amz-Signature=5e91ac07f0794099915681226fea97f4676cee57235cb7f544ea459f2460bdc9&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=0)

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
