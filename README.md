# Template Remote Dev App Android SDK for CLI developer

Template for Android Development Environment
You don't need to install any GUI or Desktop environment for your Android app development environment.

> You can develop an Android app remotely from anywhere; all you need is a browser or SSH.

### How to use this template?

You just need to copy **install_android-sdk.sh** and **install_android-sdk.bashrc**, these two files, into your Android App Project's source code. 
or just open this project with Codespaces, Gitpod, VScode Server or SSH, it's simple!

**Remote Development using Web Browser**

![Screenshot Web](https://github-production-user-asset-6210df.s3.amazonaws.com/121381/291022047-c148fae8-a1f7-4973-92da-f60550359044.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231217%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231217T011234Z&X-Amz-Expires=300&X-Amz-Signature=5e91ac07f0794099915681226fea97f4676cee57235cb7f544ea459f2460bdc9&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=0)

**Remote Development using SSH**

![Screenshot SSH](https://private-user-images.githubusercontent.com/121381/291023152-fc11a93c-2f7b-4ea1-afc9-a4e1be021be0.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTEiLCJleHAiOjE3MDI3Nzc4NjAsIm5iZiI6MTcwMjc3NzU2MCwicGF0aCI6Ii8xMjEzODEvMjkxMDIzMTUyLWZjMTFhOTNjLTJmN2ItNGVhMS1hZmM5LWE0ZTFiZTAyMWJlMC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBSVdOSllBWDRDU1ZFSDUzQSUyRjIwMjMxMjE3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDIzMTIxN1QwMTQ2MDBaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1hNTFjMWYwMGRlZGJlNzI5NmZmNGE3ZGVlM2Y2NWViY2Q3MmMwNTZlNDNmNzIyYzdhNGViZWQ4NGUwMWNjNmYyJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.5xW-E9g0cZLUUe_N4LTMmoiDJi_Njd_1rdqc1FeAlN8)

**Support Platforms (Tested 2023/12/17)**

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
