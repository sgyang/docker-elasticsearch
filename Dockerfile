FROM elasticsearch:2.3
MAINTAINER Seonggi Yang <seonggi.yang@gmail.com>

RUN bin/plugin install delete-by-query
RUN bin/plugin install mobz/elasticsearch-head
