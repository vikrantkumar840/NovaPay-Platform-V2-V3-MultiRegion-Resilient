# Aurora Global Database Failover

## Validation

aws rds describe-global-clusters

## Failover

aws rds failover-global-cluster \
--global-cluster-identifier novapay-global \
--target-db-cluster-identifier novapay-dr

## Verification

aws rds describe-db-clusters