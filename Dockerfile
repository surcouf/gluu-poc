FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -fy \
        curl \
        apt-transport-https \
	net-tools

RUN echo "deb https://repo.gluu.org/ubuntu/ xenial main" > /etc/apt/sources.list.d/gluu-repo.list

RUN curl https://repo.gluu.org/ubuntu/gluu-apt.key | apt-key add -

RUN apt-get update && \
    apt-get install -fy \
        gluu-server-3.0.2

RUN mkdir -p /lib/modules

EXPOSE 80 443
