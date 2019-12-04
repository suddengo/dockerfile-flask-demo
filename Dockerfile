From centos:7

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
COPY ./docker-env/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
COPY ./docker-env/pip.conf /root/.pip/


WORKDIR flask-demo

COPY requirements.txt ./

RUN yum makecache fast && yum update -y && yum install -y python36 python36-pip python36-dev libSM libXrender libXext vim &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    pip3 install -r requirements.txt && rm -rf ~/.cache/pip && yum clean all && rm -rf var/cache/yum/*

COPY ./app ./app
COPY ./setup.sh ./
COPY ./run_flask.py ./
