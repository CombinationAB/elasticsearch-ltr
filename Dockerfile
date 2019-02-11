ARG ELASTICSEARCH_VERSION
FROM elasticsearch:$ELASTICSEARCH_VERSION
ARG ELASTICSEARCH_VERSION
RUN ./bin/elasticsearch-plugin install -b http://es-learn-to-rank.labs.o19s.com/ltr-1.1.0-es${ELASTICSEARCH_VERSION}.zip
