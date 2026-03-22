FROM scratch

ARG MINISERVE_VERSION

ADD https://github.com/svenstaro/miniserve/releases/download/v${MINISERVE_VERSION}/miniserve-${MINISERVE_VERSION}-x86_64-unknown-linux-musl /bin/miniserve
RUN chmod 0755 /bin/miniserve

COPY ./passwd /etc/passwd
COPY ./shadow /etc/shadow

USER http
WORKDIR /srv/http
ENV HOME=/srv/http
ENV MINISERVE_INDEX=index.html
ENV MINISERVE_PRETTY_URLS=true
ENV MINISERVE_NO_SYMLINKS=true
ENV MINISERVE_HIDDEN=false
ENV MINISERVE_HIDE_VERSION_FOOTER=true
ENV MINISERVE_DISABLE_INDEXING=true
EXPOSE 8080

ENTRYPOINT ["/bin/miniserve"]
CMD ["."]

LABEL org.opencontainers.image.title="distroless miniserve"
LABEL org.opencontainers.image.description="distroless miniserve"
LABEL org.opencontainers.image.version="${MINISERVE_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-miniserve"
LABEL org.opencontainers.image.volumes.data="/srv/http"
