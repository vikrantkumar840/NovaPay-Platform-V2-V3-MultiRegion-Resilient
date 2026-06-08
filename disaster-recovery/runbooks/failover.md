# NovaPay Disaster Recovery Failover Runbook

## Purpose

This runbook provides operational guidance for activating the Disaster Recovery (DR) environment when the primary region becomes unavailable.

## Scope

Primary Region:

* ap-south-1

Disaster Recovery Region:

* ap-south-2

## Failover Preconditions

The following conditions may justify failover:

* Regional outage
* EKS cluster failure
* Database outage
* Application Load Balancer failure
* Extended service degradation

## Failover Procedure

### Step 1: Confirm Incident

Validate:

* Route53 health checks
* CloudWatch alarms
* Application availability
* Database connectivity

### Step 2: Assess Impact

Determine:

* Affected services
* Customer impact
* Expected outage duration

### Step 3: Activate DR Region

Verify:

* EKS DR cluster healthy
* RDS replica available
* ALB operational
* Monitoring systems healthy

### Step 4: Redirect Traffic

Activate:

* Route53 failover routing
* Global Accelerator endpoint failover

### Step 5: Validate Recovery

Verify:

* DNS resolution
* Application accessibility
* API functionality
* Payment processing
* Monitoring dashboards

### Step 6: Communicate Status

Notify:

* Engineering teams
* Operations teams
* Stakeholders

## Recovery Targets

RTO: 15 Minutes

RPO: 5 Minutes

