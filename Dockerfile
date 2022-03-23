FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.0

RUN bin/elasticsearch-plugin install analysis-icu
