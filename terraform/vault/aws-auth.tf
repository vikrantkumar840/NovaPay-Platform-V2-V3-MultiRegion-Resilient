resource "kubernetes_config_map" "vault_aws_auth" {
  metadata {
    name      = "vault-aws-auth"
    namespace = "vault"
  }

  data = {
    "auth.hcl" = <<EOF
path "auth/aws/login" {
  capabilities = ["create", "read"]
}
EOF
  }
}
