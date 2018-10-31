FROM ubuntu:bionic
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:cwchien/gradle
RUN apt-get update && \
    apt-get install -y git \
                       ssh \
                       tar \
                       gzip \
                       ca-certificates \
                       openjdk-8-jdk \
                       gradle \
                       python-pip \
                       python-virtualenv
RUN pip install cookiecutter