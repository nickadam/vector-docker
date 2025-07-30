FROM timberio/vector:0.48.X-debian

ADD --chmod=755 https://github.com/krallin/tini/releases/download/v0.19.0/tini /usr/local/bin/tini

COPY --chmod=755 docker-entrypoint.sh /

ENTRYPOINT ["tini", "/docker-entrypoint.sh"]

CMD ["vector"]
