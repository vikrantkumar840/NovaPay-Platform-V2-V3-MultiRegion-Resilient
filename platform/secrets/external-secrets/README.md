# External Secrets Operator

## Purpose

Synchronizes secrets from Vault into Kubernetes Secrets.

## Flow

Vault
→ External Secrets Operator
→ Kubernetes Secret
→ NovaPay Application

## Example Secret

Vault Path:

secret/data/database/novapay

Properties:

username
password