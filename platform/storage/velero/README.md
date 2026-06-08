# Velero

## Purpose

Velero provides backup, restore, and disaster recovery capabilities for NovaPay Kubernetes workloads.

## Architecture

EKS Cluster
     |
     v
Velero
     |
     v
S3 Backup Bucket
     |
     v
Cross Region Replication
     |
     v
DR Region Recovery

## Backup Scope

- Namespaces
- Deployments
- Services
- ConfigMaps
- Persistent Volumes

## Backup Strategy

Daily Backups:
- 01:00 UTC

Retention:
- 30 Days

## Regions

Primary:
- ap-south-1

Disaster Recovery:
- ap-south-2

## Dependencies

- S3
- IAM Role
- OIDC Provider
- IRSA
