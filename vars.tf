variable "policies" {
  type        = list(string)
  default     = null
  description = "A list of HashiCorp Vault policies to attach to Azure Groups."
}

variable "auth_method" {
  type = string
  default = "token"
  description = "The path of the auth method to attach the group alias to. Default to 'token'."
}
