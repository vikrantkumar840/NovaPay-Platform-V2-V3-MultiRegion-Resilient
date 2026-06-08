# Automated Disaster Recovery Failover

## Purpose

This module documents the automated failover strategy used by the NovaPay Multi-Region Resilient Architecture.

The objective is to maintain payment platform availability during regional outages by automatically redirecting traffic from the primary AWS region to the disaster recovery region.

## Primary Region

* Region: ap-south-1
* EKS Primary Cluster
* RDS Primary Database
* Application Load Balancer
* Route53 Primary Record

## Disaster Recovery Region

* Region: ap-south-2
* EKS DR Cluster
* RDS Read Replica
* Application Load Balancer
* Route53 Secondary Record

## Automation Components

* Route53 Health Checks
* CloudWatch Alarms
* SNS Notifications
* Global Accelerator Endpoint Groups
* Velero Backup and Restore

## Recovery Objectives

* Recovery Time Objective (RTO): 15 Minutes
* Recovery Point Objective (RPO): 5 Minutes

## Outcome

In the event of a regional failure, traffic is redirected automatically to the DR environment while preserving application availability and minimizing data loss.

