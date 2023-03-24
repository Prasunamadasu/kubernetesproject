FROM centos:latest
RUN yum install httpd && yum install zip && yum install unzip -y
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
ADD https://www.tooplate.com/zip-templates/2133_moso_interior.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip 2133_moso_interior.zip
RUN cp -rvf 2133_moso_interior/* .


