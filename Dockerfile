FROM centos:latest

RUN yum install openssh-server passwd net-tools  -y

RUN ssh-keygen -A

RUN echo 'redhat' | passwd root --stdin

CMD  ["/usr/sbin/sshd","-D"] &&  /bin/bash


