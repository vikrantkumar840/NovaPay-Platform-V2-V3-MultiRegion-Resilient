# NovaPay Automated Failover Workflow

## Trigger Conditions

- Primary Region Unavailable
- Route53 Health Check Failure
- ALB Health Check Failure
- EKS Control Plane Failure

## Failover Flow

CloudWatch Alarm
      |
      v
SNS Notification
      |
      v
Failover Decision
      |
      v
Route53 Failover
      |
      v
Traffic Redirected to DR Region
      |
      v
Application Recovery Validation

## Recovery Targets

RTO: < 15 Minutes

RPO: < 5 Minutes
