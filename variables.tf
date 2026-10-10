variable "lb_listener_certificates" {
  description = <<EOT
Map of lb_listener_certificates, attributes below
Required:
    - certificate_arn
    - listener_arn
Optional:
    - region
EOT

  type = map(object({
    certificate_arn = string
    listener_arn    = string
    region          = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

