FROM ubuntu:latest

LABEL maintainer="dev@jzit.de"

ENV RCON_PASSWORD="changeme" \
    API_KEY="changeme" \
    STEAM_ACCOUNT="" \
    SERVER_PASSWORD="" \
    PORT="27099" \
    TICKRATE="128" \
    MAXPLAYERS="32"

RUN set -x \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		wget \
		ca-certificates \
		lib32z1 \
                simpleproxy \
                libicu-dev \
                curl \
                sudo \
        && curl --silent --output "install.sh" "https://raw.githubusercontent.com/kus/cs2-modded-server/master/install.sh" \
        && chmod +x install.sh \
        && apt-get clean \
        && find /var/lib/apt/lists/ -type f -delete

CMD ["bash", "install.sh"]

# Expose ports
EXPOSE 27015/tcp \
	27015/udp \
	27020/udp

