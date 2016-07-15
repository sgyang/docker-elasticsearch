# docker-elasticsearch

My default simple elasticsearch container.

- delete-by-query
- mobz/elasticsearch-head

```
docker run -d --name esnode0 \
    --hostname esnode0 \
    sgyang/elasticsearch \
    -Des.cluster.name=elasticsearch-cluster \
    -Des.node.name=esnode0 \
    -Des.node.master=true

docker run -d --name esnode1 \
    --hostname esnode1 \
    --link esnode0 \
    sgyang/elasticsearch \
    -Des.cluster.name=elasticsearch-cluster \
    -Des.node.name=esnode1 \
    -Des.node.master=false \
    -Des.discovery.zen.ping.unicast.hosts=esnode0

docker run -d --name esnode2 \
    --hostname esnode2 \
    --link esnode0 \
    sgyang/elasticsearch \
    -Des.cluster.name=elasticsearch-cluster \
    -Des.node.name=esnode2 \
    -Des.node.master=false \
    -Des.discovery.zen.ping.unicast.hosts=esnode0
```
