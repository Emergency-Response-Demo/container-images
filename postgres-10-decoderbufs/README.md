### postgres-10-decoderbufs

PostgreSQL image for use with Debezium 

The [Postgres](https://www.postgresql.org) relational database management system has a feature called [logical decoding](https://www.postgresql.org/docs/10/static/logicaldecoding-explanation.html) that allows clients to extract all persistent changes to a database's tables into a coherent, easy to understand format which can be interpreted without detailed knowledge of the database's internal state. An output plugin transform the data from the write-ahead log's internal representation into the format the consumer of a replication slot desires.

This image is based upon [`postgres-10-fedora`](https://hub.docker.com/_/postgres/) and adds two logical decoding plug-ins:

* [postgres-decoderbufs](https://github.com/debezium/), based on Protocol Buffers and maintained by the Debezium community
* [wal2json](https://github.com/eulerto/wal2json), based on JSON and maintained by the wal2json community

Both are supported by the [Debezium PostgreSQL Connector](http://debezium.io/docs/connectors/postgresql/) to capture changes committed to the database and record the data change events in Kafka topics.
In addition, Debezium supports the `pgoutput` plug-in, which is available by default on Postgres 10 and later.
The image also includes [PostGIS](http://www.postgis.net) spatial database extender used to provide geospatial queries, so that changes to geometric data can also be captured by Debezium.

The `Dockerfile.fedora` uses a Fedora 29 image with PostgreSQL 10 as builder and base image.