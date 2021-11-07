FROM centos
RUN yum install epel-release python3-pip -y && pip3 install flask
WORKDIR /python
ADD app.py ./
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
EXPOSE 5000