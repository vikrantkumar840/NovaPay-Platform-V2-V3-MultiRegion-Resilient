# Cluster Autoscaler

## Purpose

Automatically adjusts the number of worker nodes based on pod scheduling demand.

## Architecture

Pending Pods
      |
      v
Cluster Autoscaler
      |
      v
EKS Managed Node Groups
      |
      v
Additional Worker Nodes

## Dependencies

- Amazon EKS
- Metrics Server
- OIDC Provider
- IRSA

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- Prometheus
- Grafana
- Argo Rollouts
