FROM docker.io/voidlinux/voidlinux-musl
RUN xbps-install -Syu xbps && xbps-install peshming
