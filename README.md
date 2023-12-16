# Template-Dev-Android-SDK
Template for Android Development Environment

This template is for Ubuntu 22.04 LTS only

```sh
sudo ./install_android-sdk.sh
cat ./install_android-sdk.bashrc >> ~/.bashrc
cd /opt
sudo chown -R $USER android gradle gradlew
```

Try to build Hello World to make sure development environment is working now

```sh
cd ~/
git clone https://github.com/francohorita/android-hello-world.git
cd android-hello-world
gradle
gradlew tasks
gradlew assembledebug
```

Check build result

```sh
cd app/build/outputs/apk/debug/
ls -l
```