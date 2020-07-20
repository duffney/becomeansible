ansible localhost -m ping
ansible localhost -m file -a "path=ansible.txt state=touch"