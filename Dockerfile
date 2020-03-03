FROM swift:bionic

RUN apt-get update && apt-get -y install wget

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
RUN sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
RUN apt-get -y install apt-transport-https
RUN apt-get update
RUN apt-get -y install openjdk-8-jre
RUN apt-get -y install jenkins

EXPOSE 8080

ENV JENKINS_HOME=/.jenkins

ENTRYPOINT ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
