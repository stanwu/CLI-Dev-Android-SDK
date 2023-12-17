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

You just need to copy **install_android-sdk.sh** into your Android App Project's source code. 
or just open this project with Codespaces, Gitpod or git clone via SSH, it's simple!

**Screenshot demo**

*Remote Development using Web Browser*

![Screenshot Web](https://private-user-images.githubusercontent.com/121381/291113337-a72cef55-5b8e-435f-8099-955345bfcf60.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDI4NTc2MDAsIm5iZiI6MTcwMjg1NzMwMCwicGF0aCI6Ii8xMjEzODEvMjkxMTEzMzM3LWE3MmNlZjU1LTViOGUtNDM1Zi04MDk5LTk1NTM0NWJmY2Y2MC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBSVdOSllBWDRDU1ZFSDUzQSUyRjIwMjMxMjE3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDIzMTIxN1QyMzU1MDBaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMzc5ZWQzYzE5NmQ0ZDJmOWY0NzM1ODQ4YTk3M2Y5N2YxMjI2MTYwNmJjOWMyZTRmNTdkNzdmMTM3MWJkMTk4JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.tdElSJENFHDCPzOnqVgUTFe2bkZ5z2bf3lPw3aiudDA)

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
