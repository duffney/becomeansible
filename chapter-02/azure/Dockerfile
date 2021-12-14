FROM centos:7

RUN yum check-update; \
   yum install -y gcc libffi-devel python3 epel-release; \
   yum install -y openssh-clients; \
   yum install -y sshpass; \
   curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo; \
   yum install -y powershell; \
   yum clean all; \
   pwsh -c "Set-PackageSource -Name PSGallery -Trusted"; \
   pwsh -c "Install-Module AZ -Scope AllUsers"; \
   pip3 install --upgrade pip

RUN yum install -y ansible; \
   pip3 install ansible[azure]; \
   pip3 install "pywinrm>=0.3.0"
