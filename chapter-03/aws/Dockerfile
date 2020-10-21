FROM centos:centos7.7.1908

RUN  yum check-update; \
   yum install -y gcc libffi-devel python3 epel-release; \
   yum install -y openssh-clients; \
   yum install -y sshpass; \
   pip3 install --upgrade pip

RUN ppip3 install "ansible==2.9.12"; \
   pip3 install boto; \
   pip3 install boto3; \
   pip3 install "pywinrm>=0.3.0"