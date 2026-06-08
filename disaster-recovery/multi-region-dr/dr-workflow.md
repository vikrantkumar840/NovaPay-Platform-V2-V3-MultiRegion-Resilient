# Disaster Recovery Workflow

## Architecture Flow

Developer
→ GitHub Repository
→ GitHub Actions CI Pipeline
→ SonarQube Quality & Security Validation
→ Docker Image Build
→ Amazon ECR
→ ArgoCD GitOps Deployment
→ Amazon EKS (Primary Region)
→ Argo Rollouts Progressive Delivery
→ Prometheus & Loki Monitoring
→ Velero Backup to Amazon S3
→ Route53 Health Checks
→ Amazon EKS (Secondary Region)
→ Disaster Recovery Failover

## Recovery Process

1. Detect primary region failure.
2. Trigger Route53 failover.
3. Redirect traffic to secondary region.
4. Restore workloads from GitOps manifests and backups.
5. Validate application availability.
6. Resume normal operations.

