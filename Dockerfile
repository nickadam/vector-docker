FROM timberio/vector:0.24.1-debian

ADD https://github.com/krallin/tini/releases/download/v0.19.0/tini /usr/local/bin/tini

COPY docker-entrypoint.sh /

RUN chmod 755 /usr/local/bin/tini /docker-entrypoint.sh

ENTRYPOINT ["tini", "/docker-entrypoint.sh"]

CMD ["vector"]
