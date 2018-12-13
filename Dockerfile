FROM	debian:stretch

LABEL "com.github.actions.name"="dpkg-buildpackage"
LABEL "com.github.actions.description"="Builds a debian package"
LABEL "com.github.actions.icon"="cog"
LABEL "com.github.actions.color"="purple"

RUN	apt-get update \
&&	apt-get install -y build-essential debhelper dh-systemd config-package-dev dh-apparmor dh-python \
&&	rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "dpkg-buildpackage" ]
