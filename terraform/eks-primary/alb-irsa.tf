module "alb_irsa" {
  source = "../modules/iam-alb-controller"

  role_name   = "novapay-alb-controller"
  policy_name = "AWSLoadBalancerControllerIAMPolicy"

  oidc_provider_arn = data.terraform_remote_state.oidc.outputs.oidc_provider_arn
  oidc_provider_url = replace(
    data.terraform_remote_state.oidc.outputs.oidc_provider_url,
    "https://",
    ""
  )
}
