# Argo Rollouts

## Purpose

Provides progressive delivery capabilities for NovaPay.

## Deployment Strategies

- Canary Deployments
- Blue/Green Deployments
- Automated Rollbacks

## Architecture

GitHub
   |
   v
ArgoCD
   |
   v
Argo Rollouts
   |
   v
Canary Release
   |
   v
Production Traffic

## Dependencies

- ArgoCD
- Prometheus
- AWS Load Balancer Controller

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- Automated DR Failover
- Multi-Region Traffic Shifting
