FROM ubuntu:16.04

#RUN add-apt-repository --remove 'http://us-central1.gce.archive.ubuntu.com/ubuntu/ main restricted' && \
#    add-apt-repository --remove 'http://us-central1.gce.archive.ubuntu.com/ubuntu/ universe' && \
#    add-apt-repository --remove 'http://us-central1.gce.archive.ubuntu.com/ubuntu/ multiverse' && \
#    add-apt-repository http://archive.ubuntu.com/ubuntu/ && \
#    add-apt-repository 'http://archive.ubuntu.com/ubuntu/ universe' && \
#    add-apt-repository 'http://archive.ubuntu.com/ubuntu/ multiverse' && \
RUN dpkg --add-architecture i386 && \
    apt-get -qq update && apt-get install -y make nasm:i386 gcc-multilib g++-multilib paxctl:i386

COPY . /cod4x

RUN cd /cod4x/src/tomcrypt && ./compile_linux.sh 
RUN cd /cod4x/src/mbedtls && make 
RUN cd /cod4x && make linux32

ENTRYPOINT ["/cod4x/bin/cod4x18_dedrun"]
