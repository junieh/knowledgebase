# Exemplo de dockerfile basico
FROM centos
MAINTAINER Junieh version 1.0

ENV DOCKER_OWNER junieh
#Change password
RUN echo 'root:root' | chpasswd
# Install SSH, Net Tools
RUN yum install -y openssh-server
RUN yum install -y net-tools
RUN systemctl enable sshd
# Port22
EXPOSE 22 8090

CMD [“/bin/bas]

