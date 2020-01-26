FROM cm2network/steamcmd

WORKDIR /home/steam
USER steam

COPY --chown=steam:steam update_and_start.sh ./update_and_start.sh
RUN mkdir -p ./ark/ShooterGame/Saved/SavedArks \
    && chmod +x ./update_and_start.sh


ARG SESSIONNAME="ARK Server in Docker"
ARG PORT="7777"
ARG QUERYPORT="27015"
ARG RCONPORT="32330"
ARG SERVERADMINPASSWORD="YouShouldChangeThisWhenDeploying"
ARG MAXPLAYERS="50"

VOLUME ./ark
VOLUME ./ark/ShooterGame/Saved/SavedArks

EXPOSE ${PORT}/udp
EXPOSE ${QUERYPORT}/udp
EXPOSE ${RCONPORT}/udp

CMD ["./update_and_start.sh"]