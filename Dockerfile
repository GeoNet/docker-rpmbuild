FROM centos:centos6

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
    epel-release \
    yum-utils

