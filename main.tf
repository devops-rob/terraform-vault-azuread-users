locals {
  user_names = tolist(data.azuread_users.users.user_principal_names)
  object_ids = tolist(data.azuread_users.users.object_ids)

  azure_users = zipmap(local.user_names, local.object_ids)

}

resource "vault_identity_entity" "azure_users" {
  for_each = local.azure_users


  name     = each.key
  policies = var.policies

  metadata = {
    version = "1"
  }
}

resource "vault_identity_entity_alias" "user_alias" {
  for_each = local.azure_users

  name           = each.value
  mount_accessor = data.vault_auth_backend.auth_method.accessor
  canonical_id   = vault_identity_entity.azure_users[each.key].id
}