variable "role_name" {
  type    = string
  default = "novapay-alb-controller"
}

variable "policy_name" {
  type    = string
  default = "AWSLoadBalancerControllerIAMPolicy"
}

variable "oidc_provider_arn" {
  type = string
}

variable "oidc_provider_url" {
  type = string
}
