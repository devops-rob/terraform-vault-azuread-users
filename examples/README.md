# Azure Active Directory Users to Vault Entities

This module is designed to read all Azure Active Directory (AAD) users in an Azure Tenant, and create matching entities in HashiCorp Vault and entity aliases that tie these all together.

## Example Usage

```hcl
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.10.0"
    }
  }
}

provider "vault" {
  address = "http://localhost:8200"
  token   = var.vault_token
}

provider "azuread" {}

variable "vault_token" {}

module "users" {
  source = "../"
}
```
