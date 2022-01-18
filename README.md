# jmx_prometheus-docker

Docker image for the [Prometheus JMX exporter] HTTP server.

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

## Running in Docker Swarm

The JMX exporter HTTP service runs on port 5556.

Here is an example of a docker-compose configuration to run a jmx_prometheus
container as part of a Docker Swarm stack, with a port mapping to allow access
to the service from the host machine.

```yaml
services:
  jmx_prometheus-activemq:
    image: docker.lib.umd.edu/jmx_prometheus:latest
    configs:
      - source: activemq.yml
        target: /etc/jmx_prometheus.yml
    ports:
      - "5556:5556"

configs:
  activemq.yml:
    file: ./jmx_prometheus/activemq.yml
```

[Prometheus JMX exporter]: https://github.com/prometheus/jmx_exporter
[configuration file]: https://github.com/prometheus/jmx_exporter#configuration
[example configurations]: https://github.com/prometheus/jmx_exporter/tree/master/example_configs
