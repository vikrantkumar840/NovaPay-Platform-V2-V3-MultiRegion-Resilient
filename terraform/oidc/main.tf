terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Component   = "OIDC"
  }
}

# Placeholder OIDC architecture foundation

resource "aws_iam_policy" "irsa_foundation" {
  name        = "novapay-irsa-foundation"
  description = "Foundation policy for future IRSA integrations"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = [
        "sts:AssumeRoleWithWebIdentity"
      ]
      Resource = "*"
    }]
  })

  tags = local.common_tags
}
