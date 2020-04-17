 resource "github_organization_webhook" "hooks" {
  for_each = var.webhooks

  configuration {
    url = lookup(each.value, "url", "")
    content_type = lookup(each.value, "content_type", "")
    insecure_ssl = lookup(each.value, "insecure_ssl", "false")
    secret       = lookup(each.value, "secret", "")
  }

  active = lookup(each.value, "active", "true")

  events = lookup(each.value, "events", [""])

}