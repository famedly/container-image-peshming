FROM docker.io/voidlinux/voidlinux-musl
ARG VERSION
RUN xbps-install -Syu xbps && xbps-install -y peshming-${VERSION}_1
ENTRYPOINT /bin/peshming
