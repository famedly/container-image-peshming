FROM ghcr.io/void-linux/void-linux:latest-thin-bb-x86_64-musl
ARG VERSION
RUN xbps-install -Syu xbps && xbps-install -y peshming-${VERSION}_1 curl
ENTRYPOINT /bin/peshming
HEALTHCHECK --interval=10s --timeout=10s \
  CMD curl -fSs http://localhost:9898/health || exit 1
