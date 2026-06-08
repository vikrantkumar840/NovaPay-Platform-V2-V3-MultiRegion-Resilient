# Disaster Recovery Validation

## Purpose

This document defines validation activities performed after failover to the DR region.

## Infrastructure Validation

* VPC Reachability
* Subnet Availability
* Security Group Validation
* Network Connectivity

## Kubernetes Validation

* EKS Cluster Reachable
* Node Groups Healthy
* Pods Running
* Services Accessible

## Database Validation

* RDS Reachable
* Replica Healthy
* Application Connectivity Verified

## Application Validation

* Application Login
* API Availability
* Payment Workflow Validation
* Transaction Processing Validation

## Observability Validation

* Prometheus Healthy
* Grafana Accessible
* Loki Logging Functional
* CloudWatch Alarms Active

## Backup Validation

* Velero Operational
* S3 Backup Access Verified
* Restore Capability Confirmed

