##
 # Terraform Testing for Azure Automation
 # by @Dean Reid
 #
 # Class: main.tf
 #  
 # Class Information:
 #
 # Class contains code to specify provider and required features
 # 
 # Program Version: 1.0
 # Code Version: 1.0
 # 
 # Updates: 
 # 15/10/2023 - Initial Code Development
 ###

# Specifies Azure as Provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}

# Configures Providers
provider "azurevm" {
  features {}
}
