FROM ubuntu:18.04

RUN apt-get update; \
    apt install -y python3-pip; \
    apt install -y sshpass; \
    apt install -y openssh-client
   
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"; \
    pip3 install boto; \
    pip3 install boto3; \
    pip3 install "pywinrm>=0.3.0"