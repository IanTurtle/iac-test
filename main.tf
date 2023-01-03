terraform {
  backend "azurerm" {
    subscription_id      = "93682d52-7a63-48d0-b74f-4b0bc5daf823"
    resource_group_name  = "ian-test-rg"
    storage_account_name = "it41979backend"
    container_name       = "tfstate"
    key                  = "example.tfstate"
    use_oidc             = true
  }

  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "random"{
}

resource "random_integer" "priority" {
  min = 10
  max = 1000
}
