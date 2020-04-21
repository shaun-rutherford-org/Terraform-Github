data "github_team" "search" {
  for_each = var.github_teams_nested
  slug = lookup(each.value, "slug", "")
}

resource "github_team" "nested" {
  for_each    = var.github_teams_nested

  name           = each.key
  description    = lookup(each.value, "description", "")
  privacy        = lookup(each.value, "privacy", "secret")
  parent_team_id = data.github_team.search[each.key].id
  ldap_dn        = lookup(each.value, "ldap_dn", "")

}
