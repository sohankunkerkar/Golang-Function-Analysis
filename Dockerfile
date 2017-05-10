FROM ubuntu:15.04

RUN apt-get -y update

# update packages and install
RUN apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev$

RUN apt-get -y install ansible
