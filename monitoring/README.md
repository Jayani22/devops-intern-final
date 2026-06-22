# Monitoring

This project uses Grafana Loki for centralized log aggregation.

## Components

### Loki
Stores and indexes logs.

### Promtail
Collects logs from the host and forwards them to Loki.

## Files

- loki_setup.txt
- promtail-config.yml

## Architecture

Application Logs → Promtail → Loki