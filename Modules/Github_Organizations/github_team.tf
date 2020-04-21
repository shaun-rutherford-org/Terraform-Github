resource "github_team" "team_created" {
  for_each    = var.github_teams

  name           = each.key
  description    = lookup(each.value, "description", "")
  privacy        = lookup(each.value, "privacy", "secret")
  ldap_dn        = lookup(each.value, "ldap_dn", "")

}
