# NovaPay Multi-Region Resilient Architecture

## Primary Region (Mumbai - ap-south-1)

* VPC (10.0.0.0/16)
* Public Subnets
* Private Subnets
* NAT Gateway
* Internet Gateway
* EKS Cluster (Planned)
* Aurora Primary (Planned)
* DynamoDB Global Tables (Planned)

## Disaster Recovery Region (Hyderabad - ap-south-2)

* VPC (10.1.0.0/16)
* Public Subnets
* Private Subnets
* NAT Gateway
* Internet Gateway
* EKS DR Cluster (Planned)
* Aurora Secondary (Planned)

## Replication Layer

* S3 Cross Region Replication
* Aurora Global Database
* DynamoDB Global Tables

## Traffic Layer

* Route53 Health Checks
* Route53 Failover Routing

## Observability

* Prometheus
* Grafana
* Alertmanager

## GitOps

* ArgoCD
* GitHub Actions
* Terraform
* Kubernetes

