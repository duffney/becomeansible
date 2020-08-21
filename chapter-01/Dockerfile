FROM centos:centos7.7.1908

RUN yum check-update; \
   yum install -y gcc libffi-devel python3 epel-release; \
   yum install -y openssh-clients; \
   pip3 install --upgrade pip; \
   pip3 install ansible