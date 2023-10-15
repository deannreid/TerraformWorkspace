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
      source = "hashicorp/azurerm" # Specifying Azure Resource Manager
      version = "=3.0.1" # Latest Version as of 15/10/23
    }
  }
}

# Configures Providers
provider "azurevm" {
  features {}
}

# Resource Group Creation
resource "azurerm_resource_group" "XHST-Devel-RG" {
  name     = "XHT-Devel-Resources"
  location = "UK South"
}
