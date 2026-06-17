# PagerDuty Integration

## Purpose

Provides real-time alert escalation for NovaPay.

## Flow

Prometheus
→ AlertManager
→ PagerDuty
→ On-call Engineer

## Alert Types

- Pod CrashLoopBackOff
- Node NotReady
- High CPU Usage
- High Memory Usage
- Application Errors

## Future Integration

Vault → External Secrets → PagerDuty Key