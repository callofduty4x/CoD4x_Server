FROM debian:stretch-slim

## VARIABLES
ENV MAX_PLAYERS=22
ENV MAIN_SHARED=
ENV FS_GAME=
ENV CONFIG=
ENV ARGS=

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y lib32stdc++6

COPY bin/ cod4x-server
RUN chmod +x cod4x-server/cod4x18_dedrun
RUN groupadd -r cod && useradd --no-log-init -r -g cod cod

RUN chown -R cod:cod cod4x-server

RUN mkdir cod4x-server/main
RUN chown -R cod:cod cod4x-server/main

VOLUME /cod4x-server-base/main /cod4x-server-base/zone /cod4x-server/plugins /cod4x-server/mods
EXPOSE 28960
USER cod

ENTRYPOINT cd cod4x-server && ./cod4x18_dedrun +set net_port 28960 +map mp_killhouse +set sv_maxclients $MAX_PLAYERS +set fs_homepath . +set fs_basepath ../cod4x-server-base +set fs_game "$FS_GAME" +exec "$CONFIG" $ARGS
#ENTRYPOINT /bin/bash