# Docker Compose for Prometheus & Grafana

This project makes it easier to get started with [Prometheus](https://github.com/prometheus/prometheus) and [Grafana](https://github.com/grafana/grafana). Docker Compose creates the necessary containers, including [node exporter](https://github.com/prometheus/node_exporter) and [cadvisor](https://github.com/google/cadvisor) used to monitor the setup.

In addition, this project provides an example of how to seed Grafana with some dashboards and the Prometheus Data Source.

And for a bonus, when you run it locally you can monitor any other running containers.

## Getting Started

The Makefile provides some easy wrapper commands.

To start up the containers, copy the sample config, and seed the grafana database,

    make start

To view the logs for all containers,

    make logs

To copy the sample config,

    make etc/prometheus/prometheus.yml

To seed the Grafana Database, (it is ok to run this multiple times as it will not overwrite anything)

    make seed

To remove the containers and volumes,

    make destroy

## Grafana Dashboard

http://localhost:3000

    Username: admin
    Password: admin

## Prometheus Dashboard

http://localhost:9090
