variable "email_security_allow_policy_lookup" {
  description = <<EOT
Map of email_security_allow_policy_lookup, attributes below
Required:
    - account_id
Optional:
    - filter
    - policy_id
EOT

  type = map(object({
    account_id = string
    filter = optional(object({
      direction            = optional(string)
      is_acceptable_sender = optional(bool)
      is_exempt_recipient  = optional(bool)
      is_trusted_sender    = optional(bool)
      order                = optional(string)
      pattern              = optional(string)
      pattern_type         = optional(string)
      search               = optional(string)
      verify_sender        = optional(bool)
    }))
    policy_id = optional(string)
  }))
}

