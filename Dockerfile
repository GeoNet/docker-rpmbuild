FROM centos:centos7

USER root

RUN yum install -y \
    autoconf \
    automake \
    createrepo \
    gcc \
    gcc-c++ \
    make \
    rpm-build \
    rpmlint \
    tar \
    yum-utils

