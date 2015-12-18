FROM centos:7
RUN yum -y install epel-release 
RUN yum -y install \
      gcc          \
      git          \
      make         \
      python-devel \
      python-pip   \
      && rm -rf /var/cache/yum 
RUN git clone https://github.com/ckolos/beeswithmachineguns.git
WORKDIR ./beeswithmachineguns
RUN pip install -r requirements.txt
ENTRYPOINT ["./bees"]
CMD ["--help"]
