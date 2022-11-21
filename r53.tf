# Example DNS record using Route53.
# Route53 is not specifically required; any DNS host can be used.
# resource "aws_route53_record" "my_domain" {
#   zone_id = var.domain_r53_host_id
#   name = "${var.domain}-${var.environment}"
#   type = "A"

#   alias {
#     name                   = aws_alb.my_load_balancer.dns_name
#     zone_id                = aws_alb.my_load_balancer.zone_id
#     evaluate_target_health = false
#   }
# }