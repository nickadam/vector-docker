FROM timberio/vector:0.41.X-debian as dl

ADD https://github.com/krallin/tini/releases/download/v0.19.0/tini /usr/local/bin/tini

FROM timberio/vector:0.41.X-debian

COPY --chmod=755 docker-entrypoint.sh /

COPY --from=dl --chmod=755 /usr/local/bin/tini /usr/local/bin/tini

ENTRYPOINT ["tini", "/docker-entrypoint.sh"]

CMD ["vector"]
