# Replication Strategy

## Objective

Ensure payment platform availability during regional outages.

## Data Replication

### Database

* Aurora Global Database
* Primary: Mumbai
* Secondary: Hyderabad

### Object Storage

* S3 Cross Region Replication

### NoSQL

* DynamoDB Global Tables

## Recovery Objectives

### RTO

Target: Less than 15 Minutes

### RPO

Target: Less than 5 Minutes

## Failover Process

1. Detect outage.
2. Route53 health check failure.
3. Promote DR database.
4. Redirect traffic to DR region.
5. Resume service.

## Failback Process

1. Restore primary region.
2. Re-establish replication.
3. Validate consistency.
4. Redirect traffic back to primary.

