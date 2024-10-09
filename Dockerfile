FROM eclipse-temurin:11-jdk

RUN wget https://launchpad.net/~xtradeb/+archive/ubuntu/apps/+files/xtradeb-apt-source_0.4_all.deb
RUN dpkg -i xtradeb-apt-source_0.4_all.deb
RUN rm *.deb

RUN apt-get update
RUN apt-get install -y \
  git \
  xvfb \
  curl \
  bzip2 \
  libgtk-3-dev \
  libdbus-glib-1-2 \
  wget \
  gnupg \
  firefox \
  chromium 
RUN apt-get clean

USER 1000
WORKDIR /home/ubuntu

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

ENTRYPOINT ["/bin/bash"]
