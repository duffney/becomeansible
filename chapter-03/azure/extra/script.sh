#!/bin/sh
echo 'it worked' >> /tmp/worked.txt
echo 'ansible        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers
#https://github.com/Azure/custom-script-extension-linux