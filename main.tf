data "cloudflare_email_security_allow_policy" "email_security_allow_policy_lookup" {
  for_each = var.email_security_allow_policy_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  policy_id  = each.value.policy_id
}

