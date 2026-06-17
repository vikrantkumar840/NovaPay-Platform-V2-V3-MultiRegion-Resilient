# Deployment Failure

## Symptoms

- CrashLoopBackOff
- ImagePullBackOff

## Validation

kubectl get pods -A

kubectl describe pod POD_NAME

## Recovery

Verify image exists in ECR.

Restart deployment.

kubectl rollout restart deployment novapay