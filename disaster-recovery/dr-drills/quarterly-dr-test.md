# NovaPay Quarterly Disaster Recovery Test

## Objective

Validate disaster recovery readiness and operational procedures on a quarterly basis.

## Test Scope

Infrastructure:

* VPC
* EKS
* RDS
* Route53
* Global Accelerator

Platform Components:

* ArgoCD
* Argo Rollouts
* Velero
* Prometheus
* Grafana
* Loki

## Test Scenarios

### Scenario 1

Primary ALB Failure

Expected Result:

Traffic redirected to DR region.

### Scenario 2

Primary EKS Failure

Expected Result:

Applications available in DR cluster.

### Scenario 3

Database Recovery Validation

Expected Result:

DR database accessible and synchronized.

### Scenario 4

Velero Restore Validation

Expected Result:

Successful backup restoration.

## Validation Checklist

* DNS Resolution
* Application Availability
* Database Connectivity
* Monitoring Availability
* Backup Accessibility

## Success Criteria

* RTO achieved within target
* RPO achieved within target
* No critical service failure

## Review

Document:

* Findings
* Risks
* Improvement Actions
* Remediation Timeline

