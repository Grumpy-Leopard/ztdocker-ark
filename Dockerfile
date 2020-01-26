FROM cm2network/steamcmd

WORKDIR /home/steam
USER steam

RUN mkdir -p /ark/ShooterGame/Saved/SavedArks
COPY update_and_start.sh /home/steam/update_and_start.sh

ENV SESSIONNAME="ARK Server in Docker" \
    PORT="7777" \
    QUERYPORT="27015" \
    RCONPORT="32330" \
    SERVERADMINPASSWORD="YouShouldChangeThisWhenDeploying" \
    MAXPLAYERS="50"

VOLUME /ark
VOLUME /ark/ShooterGame/Saved/SavedArks

CMD ["./update_and_start.sh"]