# Prometheus

## Purpose

Prometheus provides metrics collection, storage, and alerting for the NovaPay platform.

## Architecture

Nodes / Pods
      |
      v
Prometheus
      |
      +----> Alertmanager
      |
      +----> Grafana

## Metrics Collected

- Node Metrics
- Pod Metrics
- Container Metrics
- EKS Metrics
- Application Metrics

## Dependencies

- Metrics Server
- Kubernetes API
- Alertmanager

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- Grafana
- Loki
- Argo Rollouts
- Disaster Recovery Monitoring
