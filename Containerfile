FROM cgr.dev/chainguard/curl:latest-dev AS fetch

ARG MINISERVE_VERSION
ARG MINISERVE_RELEASE

WORKDIR /fetch/miniserve
RUN curl --silent --show-error --location --output miniserve \
  "${MINISERVE_RELEASE}" \
  && chmod 0755 miniserve

FROM scratch

ARG MINISERVE_VERSION

COPY --from=fetch /fetch/miniserve/miniserve /usr/bin/miniserve
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

ENTRYPOINT ["/usr/bin/miniserve"]
CMD ["."]

LABEL org.opencontainers.image.title="distroless miniserve"
LABEL org.opencontainers.image.description="distroless miniserve"
LABEL org.opencontainers.image.version="${MINISERVE_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-miniserve"
LABEL org.opencontainers.image.volumes.data="/srv/http"
