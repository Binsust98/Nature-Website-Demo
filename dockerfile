FROM centos:7

RUN yum update -y 
RUN yum install -y epel-release sudo 
RUN yum install nginx -y 
RUN systemctl enable nginx.service

# COPY images /usr/share/nginx/html
# COPY index.html /usr/share/nginx/html

ENTRYPOINT /usr/sbin/init

EXPOSE 80

#docker build -f .dockerignore -t binsust/nature-website:v1