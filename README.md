# Template Remote Dev App Android SDK for CLI developer

Template for Android Development Environment
You don't need to install any GUI or Desktop environment for your Android app development environment.

> You can develop an Android app remotely from anywhere; all you need is a browser or SSH.

### How to use this template?

**Method 1. Quick method:**

```sh
curl -q "https://raw.githubusercontent.com/stanwu/CLI-Dev-Android-SDK/main/install_android-sdk.sh" | bash
```

**Method 2. Integrate into project:**

You just need to copy **install_android-sdk.sh** and **install_android-sdk.bashrc**, these two files, into your Android App Project's source code. 
or just open this project with Codespaces, Gitpod, VScode Server or SSH, it's simple!

**Screenshot demo**

*Remote Development using Web Browser*

![Screenshot Web](https://github-production-user-asset-6210df.s3.amazonaws.com/121381/291022047-c148fae8-a1f7-4973-92da-f60550359044.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231217%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231217T011234Z&X-Amz-Expires=300&X-Amz-Signature=5e91ac07f0794099915681226fea97f4676cee57235cb7f544ea459f2460bdc9&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=0)

*Remote Development using SSH*

![Screenshot SSH](https://github-production-user-asset-6210df.s3.amazonaws.com/121381/291112591-8d081223-6533-4e74-b625-389563cdc650.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231217%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231217T233827Z&X-Amz-Expires=300&X-Amz-Signature=b26cb1000f3cac1cbc54f5c37cd808fa8e6fe4bbeb8337276c117184caeb49a9&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=0)

### Support Platforms (Tested 2023/12/17)**

- GitHub Codespaces
- Gitpod
- GCP Ubuntu 20.04 LTS
- GCP Ubuntu 22.04 LTS

**Build Development Environment**

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
