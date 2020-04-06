FROM centos:centos7.7.1908

RUN  yum check-update; \
   yum install -y gcc libffi-devel python-devel openssl-devel epel-release; \
   yum install -y python-pip python-wheel; \
   pip install --upgrade pip; \
   pip install ansible
