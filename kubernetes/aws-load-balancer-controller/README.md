# AWS Load Balancer Controller

## Purpose

The AWS Load Balancer Controller manages:

- Application Load Balancers (ALB)
- Network Load Balancers (NLB)
- Kubernetes Ingress Resources
- Target Group Bindings

## Architecture

Internet
    |
    v
AWS ALB
    |
    v
AWS Load Balancer Controller
    |
    v
Kubernetes Ingress
    |
    v
Application Services

## Dependencies

- Amazon EKS
- OIDC Provider
- IAM Roles for Service Accounts (IRSA)
- ACM Certificates
- Route53

## NovaPay Usage

Primary Region:
- ap-south-1

DR Region:
- ap-south-2

Future Integration:
- ExternalDNS
- Argo Rollouts
- Multi-Region Failover
