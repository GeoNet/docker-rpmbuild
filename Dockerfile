FROM centos:centos6

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
    tar \
    epel-release \
    yum-utils && \
    yum clean all
