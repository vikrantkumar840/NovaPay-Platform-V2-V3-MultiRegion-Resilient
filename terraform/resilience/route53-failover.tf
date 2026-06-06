resource "aws_route53_zone" "novapay" {
  name = var.domain_name
}

resource "aws_route53_health_check" "primary" {
  fqdn              = var.primary_alb_dns_name
  port              = 443
  type              = "HTTPS"
  resource_path     = "/health"
  failure_threshold = 3
  request_interval  = 30

  tags = {
    Name = "novapay-primary-healthcheck"
  }
}

resource "aws_route53_record" "primary" {
  zone_id = aws_route53_zone.novapay.zone_id

  name = "app.${var.domain_name}"
  type = "CNAME"
  ttl  = 60

  records = [
    var.primary_alb_dns_name
  ]

  set_identifier = "primary"

  failover_routing_policy {
    type = "PRIMARY"
  }

  health_check_id = aws_route53_health_check.primary.id
}

resource "aws_route53_record" "secondary" {
  zone_id = aws_route53_zone.novapay.zone_id

  name = "app.${var.domain_name}"
  type = "CNAME"
  ttl  = 60

  records = [
    var.dr_alb_dns_name
  ]

  set_identifier = "dr"

  failover_routing_policy {
    type = "SECONDARY"
  }
}
