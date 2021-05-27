FROM quay.io/geonet/centos:centos7

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
    rpmdevtools \
    tar \
    yum-utils && \
    yum clean all
