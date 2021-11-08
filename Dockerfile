FROM centos
RUN yum install epel-release python3-pip python3 -y && pip3 install flask
WORKDIR /python
ADD * ./
RUN chmod +x ./bash.sh
ENTRYPOINT [ "./bash.sh" ]
EXPOSE 80