# Loki

## Purpose

Loki provides centralized log aggregation for NovaPay services.

## Architecture

Applications
      |
      v
Promtail
      |
      v
Loki
      |
      v
Grafana

## Log Sources

- Application Logs
- Kubernetes Logs
- EKS Control Plane Logs

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- Security Monitoring
- Incident Response
- Disaster Recovery Validation
