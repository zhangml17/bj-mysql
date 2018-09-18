FROM mysql:5.7
RUN mkdir -p /opt
ADD ./manifest/thpcloud.sql /opt/
