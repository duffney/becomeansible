FROM centos:centos7.7.1908

RUN  yum check-update; \
   yum install -y gcc libffi-devel python-devel openssl-devel epel-release; \
   yum install -y python-pip python-wheel; \
   yum install -y openssh-clients; \
   yum install -y sshpass
   
RUN pip install --upgrade pip

RUN pip install ansible; \
   pip install boto; \
   pip install boto3; \
   pip install "pywinrm>=0.3.0"