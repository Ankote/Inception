#!/bin/bash

mkdir -p /var/run/vsftpd/empty

useradd -m ${FTP_USER}

# echo ${FTP_USER} >> /etc/vsftpd.userlist

chown ${FTP_USER}:${FTP_USER} /home/${FTP_USER}

chmod 777 /home/${FTP_USER}

echo "$FTP_USER:$FTP_PASS" | chpasswd

# chown $FTP_USER:$FTP_USER /home/vsftpd/myuser

chmod 777 /home/vsftpd/myuser

vsftpd