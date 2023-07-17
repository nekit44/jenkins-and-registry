FROM jenkinsci/blueocean

USER root

RUN wget https://get.jenkins.io/war-stable/2.401.2/jenkins.war
RUN cp ./jenkins.war /usr/share/jenkins/jenkins.war

RUN apk add --no-cache py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make \
    && pip3 install docker-compose

USER jenkins
