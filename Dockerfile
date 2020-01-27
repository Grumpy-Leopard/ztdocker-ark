FROM cm2network/steamcmd

WORKDIR /home/steam
USER steam

COPY --chown=steam:steam update_and_start.sh ./update_and_start.sh
RUN mkdir -p /home/steam/ark/ShooterGame/Saved/SavedArks \
    && chmod +x ./update_and_start.sh


ENV SESSIONNAME="\"ARK Server in Docker\"" \
    PORT="7777" \
    QUERYPORT="27015" \
    RCONPORT="32330" \
    SERVERADMINPASSWORD="YouShouldChangeThisWhenDeploying" \
    MAXPLAYERS="50"

VOLUME /home/steam/ark
VOLUME /home/steam/ark/ShooterGame/Saved

CMD ["./update_and_start.sh"]