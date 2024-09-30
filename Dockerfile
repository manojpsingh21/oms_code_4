FROM rockylinux:8
#ARG DOCKER_USER
ARG MY_DOCKER_CODE_USER
#RUN yum remove MySQL*
#COPY MySQL* /tmp/
#RUN yum install -y /tmp/MySQL-Cluster-server-gpl-7.3.7-1.rhel5.x86_64.rpm
#RUN yum install -y /tmp/MySQL-Cluster-client-gpl-7.3.7-1.rhel5.x86_64.rpm
#RUN yum install -y /tmp/MySQL-Cluster-shared-gpl-7.3.8-1.rhel5.x86_64.rpm
#RUN yum install -y /tmp/MySQL-Cluster-devel-gpl-7.3.7-1.rhel5.x86_64.rpm
#RUN yum install -y gcc
#RUN yum install -y git
#RUN yum install -y make
#RUN yum install -y openssl
#RUN yum install -y openssl-devel
#RUN yum install -y unzip 
RUN useradd -m ${MY_DOCKER_CODE_USER}
#RUN cd /home/${MY_DOCKER_CODE_USER}
#RUN chown -R ${MY_DOCKER_CODE_USER}:${MY_DOCKER_CODE_USER} /home/${MY_DOCKER_CODE_USER}/
USER ${MY_DOCKER_CODE_USER}
#WORKDIR /home/OM-Amar3
