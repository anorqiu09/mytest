#FROM 10.86.16.165:5001/centos:6.6
FROM centos:6.6

MAINTAINER Morningstar Product Service <anor.qiu@morningstar.com>

#install httpd
RUN yum install -y httpd
RUN yum clean all

#deploy mywebapp
COPY src/hello.html /var/www/html

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]




