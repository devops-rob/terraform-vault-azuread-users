output "azure_users_map" {
  value       = local.azure_users
  sensitive   = true
  description = "Map of Azure AD user display names to Object IDs."
}