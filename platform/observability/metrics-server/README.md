# Metrics Server

## Purpose

Metrics Server collects resource metrics from Kubernetes nodes and pods.

## Architecture

Kubelet
   |
   v
Metrics Server
   |
   v
Metrics API
   |
   v
kubectl top
HPA
Cluster Autoscaler

## Dependencies

- Amazon EKS
- Kubernetes Metrics API

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- Horizontal Pod Autoscaler
- Cluster Autoscaler
- Prometheus
