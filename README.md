# KillrVideo DSE Docker

[![Build Status](https://travis-ci.org/KillrVideo/killrvideo-dse-docker.svg?branch=master)](https://travis-ci.org/KillrVideo/killrvideo-dse-docker)

[DataStax Enterprise][dse] running in a Docker container. Contains startup scripts to 
bootstrap the CQL and DSE Search resources needed by the [KillrVideo][killrvideo] app. Based
on the official [DSE image][dse-docker] from the Docker Store.

## Builds and Releases

The `./build` folder contains a number of scripts to help with builds and releases. Continuous
integration builds are done by Travis and any commits that are tagged will also automatically
be released to the [Docker Hub][docker-hub] page. We try to follow semantic versioning,
however the version numbering is not related to what version of DSE we're using. For example,
version `1.0.0` uses DSE version `4.8.10`, while version `2.0.0` uses DSE version `5.1.0`.

[dse]: http://www.datastax.com/products/datastax-enterprise
[killrvideo]: https://killrvideo.github.io/
[dse-docker]: https://store.docker.com/images/datastax
[docker-hub]: https://hub.docker.com/r/killrvideo/killrvideo-dse/
