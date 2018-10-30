FROM debian:latest
MAINTAINER DrChopi

USER root
EXPOSE 8083 8080/tcp
RUN apt update
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common build-essential wget default-jre
RUN echo -c "wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -"
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated jenkins
RUN echo -c "curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -"
RUN echo -c "apt-key fingerprint 0EBFD88"
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get install --allow-unauthenticated -y docker-ce
RUN usermod -a -G docker root
CMD service jenkins start & tail -F /var/log/jenkins/jenkins.log
