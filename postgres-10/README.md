### postgresql-10

Equivalent of https://github.com/sclorg/postgresql-container/.

The `dockerfile.fedora` builds a Fedora 29 image using the latest scripts from https://github.com/sclorg/postgresql-container/.

The image is used as base and build image to compile and add the Postgres Decoderbufs decoder output plugin module (https://github.com/debezium/postgres-decoderbufs) to PostgreSQL 10. 