FROM ubuntu:xenial

RUN apt-get update

# install third party PPAs
# install add-apt-repository tool
RUN apt-get -y install software-properties-common
# monkey audio for mac
RUN add-apt-repository -y ppa:mc3man/xerus-media
# flacon for ttaenc
RUN add-apt-repository -y ppa:flacon/ppa
# aacgain
RUN add-apt-repository -y ppa:flexiondotorg/audio
# update apt cache
RUN apt-get update

# install pre-requisites
RUN apt-get -y install shntool
RUN apt-get -y install cuetools
RUN apt-get -y install flake
RUN apt-get -y install faac
RUN apt-get -y install libmp4v2-2
RUN apt-get -y install wavpack
RUN apt-get -y install monkeys-audio
RUN apt-get -y install ttaenc
RUN apt-get -y install imagemagick
RUN apt-get -y install enca
RUN apt-get -y install lame
RUN apt-get -y install python-mutagen
RUN apt-get -y install vorbis-tools
RUN apt-get -y install opus-tools
RUN apt-get -y install flac
RUN apt-get -y install aacgain
RUN apt-get -y install mp3gain
RUN apt-get -y install vorbisgain
RUN apt-get -y install git-sh

# install split2flac
RUN git -C / clone https://github.com/ftrvxmtrx/split2flac.git

# setup directories
RUN mkdir -p /workdir

# cleanup
RUN apt-get -y autoremove
RUN apt-get -y clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/*
RUN rm -rf /var/tmp/*

# entrypoint
WORKDIR /workdir
ENTRYPOINT ["/split2flac/split2flac"]

