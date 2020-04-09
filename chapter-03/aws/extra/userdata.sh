  #!/bin/bash
  usermod --login ansible ec2-user
  echo "Password" | passwd --stdin ansible
  sudo sed -n 'H;${x;s/\PasswordAuthentication no/PasswordAuthentication yes/;p;}' /etc/ssh/sshd_config > tmp_sshd_config
  sudo cat tmp_sshd_config > /etc/ssh/sshd_config
  rm -f tmp_sshd_config
  sudo service sshd restart
  <persist>true</persist>


user_data: |
  #!/bin/bash
  usermod --login ansible ec2-user
  echo "Password" | passwd --stdin ansible
  sudo sed -n 'H;${x;s/\PasswordAuthentication no/PasswordAuthentication yes/;p;}' /etc/ssh/sshd_config > tmp_sshd_config
  sudo cat tmp_sshd_config > /etc/ssh/sshd_config
  rm -f tmp_sshd_config
  sudo service sshd restart
  <persist>true</persist>

user_data: |
    #!/bin/bash
    sudo adduser ansible
    sudo echo "Password" | passwd --stdin ansible
    echo 'ansible        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers
    sudo sed -n 'H;${x;s/\PasswordAuthentication no/PasswordAuthentication yes/;p;}' /etc/ssh/sshd_config > tmp_sshd_config
    sudo cat tmp_sshd_config > /etc/ssh/sshd_config
    rm -f tmp_sshd_config
    sudo service sshd restart

user_data: |
    #!/bin/bash
    sudo apt-get install python -y
    useradd -m -d /home/ansible -s /bin/bash ansible
    echo 'ansible:Password'|chpasswd
    echo 'ansible        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers
    sudo sed -n 'H;${x;s/\PasswordAuthentication no/PasswordAuthentication yes/;p;}' /etc/ssh/sshd_config > tmp_sshd_config
    sudo cat tmp_sshd_config > /etc/ssh/sshd_config
    rm -f tmp_sshd_config
    sudo service sshd restart