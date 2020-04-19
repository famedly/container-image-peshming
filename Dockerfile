FROM docker.io/voidlinux/voidlinux-musl
RUN xbps-install -Syu xbps && xbps-install -y peshming
ENTRYPOINT /bin/peshming
