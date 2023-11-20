#!/bin/bash

echo "listen=YES
listen_ipv6=NO
connect_from_port_20=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
pasv_enable=NO
pasv_min_port=21000
pasv_max_port=21010
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO" > /etc/vsftpd.conf

mkdir -p /var/run/vsftpd/empty

useradd -m ${FTP_USER}

echo ${FTP_USER} >> /etc/vsftpd.userlist

chown ${FTP_USER}:${FTP_USER} /home/${FTP_USER}

echo "$FTP_USER:$FTP_PASS" | chpasswd

# mkdir   /home/mtadlaou/ftp_dir

vsftpd