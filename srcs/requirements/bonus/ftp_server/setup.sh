#!/bin/bash

mkdir -p /var/run/vsftpd/empty
# The empty directory is used by 
# vsftpd to store temporary files. These files are
#  typically used for things like logging and storing 
# session information.

useradd -m ${FTP_USER}

chown ${FTP_USER}:${FTP_USER} /home/${FTP_USER}

chmod 777 /home/${FTP_USER}

echo "$FTP_USER:$FTP_PASS" | chpasswd

chmod 777 /home/vsftpd/myuser

vsftpd
# When you run the vsftpd command, the vsftpd daemon will 
# start up and listen for incoming connections on port 21.
#  When a client connects to the FTP server, vsftpd will 
# authenticate the client and then allow the client to
# upload and download files.