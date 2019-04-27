FROM ubuntu:xenial
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
                       python2.7 \
                       python-pip \
                       zlib1g-dev
RUN pip install cookiecutter \
                tox
RUN git config --global user.name "Team 5419 Testing Image" && \
    git config --global user.email "<>"
