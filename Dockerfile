FROM centos:centos7

USER root

RUN yum -y update && \
    yum -y install \
    autoconf \
    automake \
    createrepo \
    gcc \
    gcc-c++ \
    make \
    rpm-build \
    rpmlint \
    rpm-sign \
    tar \
    yum-utils
