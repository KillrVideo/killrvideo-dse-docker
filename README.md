# KillrVideo DSE Docker

[![Build Status](https://travis-ci.org/KillrVideo/killrvideo-dse-docker.svg?branch=master)](https://travis-ci.org/KillrVideo/killrvideo-dse-docker)

[DataStax Enterprise][dse] running in a Docker container. Contains startup scripts to 
bootstrap the CQL and DSE Search resources needed by the [KillrVideo][killrvideo] app. Based
on the official [DSE image][dse-server] from Docker Hub.

## Builds and Releases

The `./build` folder contains a number of scripts to help with builds and releases. Continuous
integration builds are done by Travis and any commits that are tagged will also automatically
be released to the [Docker Hub][docker-hub] page. We try to follow semantic versioning,
however the version numbering is not related to what version of DSE we're using. For example,
version `1.0.0` uses DSE version `4.8.10`, while version `2.0.0` uses DSE version `5.1.0`.

Note: this image is no longer actively used in the KillrVideo project. Instead, KillrVideo configurations use the [official DataStax Server image][dse-server] without modification, and a separate image called [killrvideo-dse-config][killrvideo-dse-config] to perform schema loading.

[dse]: http://www.datastax.com/products/datastax-enterprise
[killrvideo]: https://killrvideo.github.io/
[dse-server]: https://hub.docker.com/r/datastax/dse-server/
[killrvideo-dse-config]: https://hub.docker.com/r/killrvideo/killrvideo-dse-config/
[docker-hub]: https://hub.docker.com/r/killrvideo/killrvideo-dse/
