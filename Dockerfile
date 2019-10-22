FROM dmilan/debian-plus
LABEL maintainer="Milan Das <milan.das77@gmail.com>"
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir -p /usr/share/man/man1

RUN apt-get update
RUN curl -L https://pkg.jenkins.io/debian/binary/jenkins_2.191_all.deb -o /tmp/jenkins_2.191_all.deb
RUN apt-get install /tmp/jenkins_2.191_all.deb -y
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

