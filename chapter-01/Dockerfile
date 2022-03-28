FROM centos:7

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN yum check-update; \
   yum install -y gcc libffi-devel python3 epel-release; \
   yum install -y openssh-clients; \
   yum clean all; \
   pip3 install --upgrade pip; \
   pip3 install "ansible==2.9.12"
