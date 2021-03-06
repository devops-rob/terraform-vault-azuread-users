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

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.