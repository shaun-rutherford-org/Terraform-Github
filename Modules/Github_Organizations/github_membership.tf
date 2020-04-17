resource "github_membership" "user_membership" {
  for_each = var.users

  username = each.key
  role     = lookup(each.value, "role", "")

}
