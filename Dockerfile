FROM ubuntu:xenial

ENV PUID=1000 \
    PGID=1000 \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_CMD_ARG0="/s2finit" \
    S6_LOGGING=1

RUN set -x && \
    apt-get update && \
    # install third party PPAs
    # install add-apt-repository tool
    apt-get -y install \
        software-properties-common \
        && \
    # monkey audio for mac
    add-apt-repository -y ppa:mc3man/xerus-media && \
    # flacon for ttaenc
    add-apt-repository -y ppa:flacon/ppa && \
    # aacgain
    add-apt-repository -y ppa:flexiondotorg/audio && \
    # update apt cache
    apt-get update && \
    # install pre-requisites
    apt-get -y install \
        aacgain \
        cuetools \
        curl \
        enca \
        faac \
        flac \
        flake \
        git \
        imagemagick \
        lame \
        libmp4v2-2 \
        monkeys-audio \
        mp3gain \
        opus-tools \
        python-mutagen \
        shntool \
        ttaenc \
        vorbis-tools \
        vorbisgain \
        wavpack \
        && \
    # install split2flac
    git -C / clone https://github.com/ftrvxmtrx/split2flac.git && \
    # setup directories
    mkdir -p /workdir && \
    # install s6-overlay
    curl -s https://raw.githubusercontent.com/mikenye/deploy-s6-overlay/master/deploy-s6-overlay.sh | sh && \
    # cleanup
    apt-get remove -y \
        curl \
        git \
        && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY etc/ /etc/
COPY s2finit /s2finit

# entrypoint
WORKDIR /workdir
ENTRYPOINT ["/init"]
