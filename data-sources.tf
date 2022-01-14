data "azuread_users" "users" {
  return_all       = true
}

data "vault_auth_backend" "auth_method" {
  path = var.auth_method
}