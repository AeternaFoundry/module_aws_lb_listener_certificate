output "lb_listener_certificates_id" {
  description = "Map of id values across all lb_listener_certificates, keyed the same as var.lb_listener_certificates"
  value       = { for k, v in aws_lb_listener_certificate.lb_listener_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_listener_certificates_certificate_arn" {
  description = "Map of certificate_arn values across all lb_listener_certificates, keyed the same as var.lb_listener_certificates"
  value       = { for k, v in aws_lb_listener_certificate.lb_listener_certificates : k => v.certificate_arn if v.certificate_arn != null && length(v.certificate_arn) > 0 }
}
output "lb_listener_certificates_listener_arn" {
  description = "Map of listener_arn values across all lb_listener_certificates, keyed the same as var.lb_listener_certificates"
  value       = { for k, v in aws_lb_listener_certificate.lb_listener_certificates : k => v.listener_arn if v.listener_arn != null && length(v.listener_arn) > 0 }
}
output "lb_listener_certificates_region" {
  description = "Map of region values across all lb_listener_certificates, keyed the same as var.lb_listener_certificates"
  value       = { for k, v in aws_lb_listener_certificate.lb_listener_certificates : k => v.region if v.region != null && length(v.region) > 0 }
}

