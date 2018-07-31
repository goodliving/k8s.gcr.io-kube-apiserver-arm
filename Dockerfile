FROM webratio/ant

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update -y && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get remove software-properties-common -y && \
    apt-get autoremove -y && \
    apt-get clean
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Installs i386 architecture required for running 32 bit Android tools
RUN dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get autoremove -y && \
    apt-get clean

# Installs Android SDK
ENV ANDROID_SDK_FILENAME android-sdk_r28.0.2-linux.tgz
ENV ANDROID_SDK_URL http://dl.google.com/android/${ANDROID_SDK_FILENAME}
ENV ANDROID_API_LEVELS android-25,android-26,android-27,android-28
ENV ANDROID_BUILD_TOOLS_VERSION 28.0.0-rc2
ENV ANDROID_HOME /tmp/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/build-tools/build-tools-${ANDROID_BUILD_TOOLS_VERSION}
RUN cd /tmp && \
    wget -q ${ANDROID_SDK_URL} && \
    tar -xzf ${ANDROID_SDK_FILENAME} && \
    rm ${ANDROID_SDK_FILENAME} && \
    echo y | android update sdk --no-ui -a --filter tools,platform-tools,${ANDROID_API_LEVELS},build-tools-${ANDROID_BUILD_TOOLS_VERSION}

RUN  set -x && \
     echo ${PATH} && \
     adb devices && \
     ls ${ANDROID_HOME}/build-tools/${ANDROID_BUILD_TOOLS_VERSION}

ENV PATH ${PATH}:${ANDROID_HOME}/build-tools/${ANDROID_BUILD_TOOLS_VERSION}
# run aapt command
RUN aapt v
