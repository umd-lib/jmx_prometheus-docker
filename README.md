# jmx_prometheus-docker

## Quick Start

```bash
# clone the repo
git clone git@githhub.com:umd-lib/jmx_prometheus-docker.git

# build the image
cd jmx_prometheus-docker
docker build -t docker.lib.umd.edu/jmx_prometheus .
```

## Configuration

The container expects a [configuration file] to be at the path
`/etc/jmx_prometheus.yml`. This location can be changed by setting a new command
for the container, to override the default `CMD` in the [Dockerfile](Dockerfile).

To get started, see the [example configurations] from the Prometheus JMX exporter.

[configuration file]: https://github.com/prometheus/jmx_exporter#configuration
[example configurations]: https://github.com/prometheus/jmx_exporter/tree/master/example_configs
