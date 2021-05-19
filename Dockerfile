FROM centos:7
WORKDIR /home/n9e

RUN set -ex \
    && yum install mysql net-tools wget -y \
    && yum clean all \
    && rm -rf /var/cache/yum

ADD http://116.85.64.82/n9e-4.0.1.tar.gz

RUN tar xvf n9e-4.0.1.tar.gz -C /home/n9e

ENTRYPOINT ["./n9e-server"]
#ENTRYPOINT ["./n9e-prober"]
#ENTRYPOINT ["./n9e-agentd"]
