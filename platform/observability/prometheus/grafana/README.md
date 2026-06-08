# Grafana

## Purpose

Grafana provides visualization and dashboarding for NovaPay platform metrics.

## Architecture

Prometheus
      |
      v
Grafana
      |
      +----> Infrastructure Dashboards
      +----> Kubernetes Dashboards
      +----> Application Dashboards

## Data Sources

- Prometheus
- CloudWatch
- Loki

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- Loki
- Alertmanager
- DR Monitoring Dashboards
