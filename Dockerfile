FROM centos:latest
MAINTAINER secdevoops.es

RUN yum update -y && yum upgrade -y

RUN yum install -y openssh-server


RUN mkdir -p /var/run/sshd \
  && mkdir /root/.ssh \
  && chmod 700 /root/.ssh 

RUN ssh-keygen -A

RUN rm -f /run/nologin

COPY my_key.pub /root/.ssh/authorized_keys

EXPOSE 22

ENTRYPOINT  ["/usr/sbin/sshd"]
CMD ["-D"]

