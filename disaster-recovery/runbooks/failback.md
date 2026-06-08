# NovaPay Disaster Recovery Failback Runbook

## Purpose

This runbook documents the procedure for returning production traffic from the Disaster Recovery region back to the Primary region.

## Preconditions

Before failback:

* Primary infrastructure restored
* Database replication healthy
* Application deployment validated
* Monitoring operational

## Failback Procedure

### Step 1: Validate Primary Region

Verify:

* EKS Cluster Healthy
* ALB Healthy
* Database Healthy
* Route53 Records Available

### Step 2: Synchronize Data

Confirm:

* RDS replication status
* Backup integrity
* Application consistency

### Step 3: Shift Traffic

Execute:

* Update Route53 routing
* Update Global Accelerator endpoint weights

### Step 4: Monitor Environment

Validate:

* Response times
* Error rates
* Transaction success rates

### Step 5: Close Incident

Document:

* Root cause
* Recovery actions
* Lessons learned

## Success Criteria

* All production traffic served from primary region
* No customer impact observed
* Monitoring systems healthy

