resource "aws_wafv2_web_acl" "novapay" {
  name  = "novapay-waf"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "novapay-waf"
    sampled_requests_enabled   = true
  }


rule {
  name     = "AWSManagedRulesCommonRuleSet"
  priority = 1

  override_action {
    none {}
  }

  statement {
    managed_rule_group_statement {
      name        = "AWSManagedRulesCommonRuleSet"
      vendor_name = "AWS"
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "common-rules"
    sampled_requests_enabled   = true
  }
}
}
