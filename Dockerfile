FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.4

RUN bin/elasticsearch-plugin install analysis-icu
