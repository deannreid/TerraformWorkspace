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

### 
  # XHST Used Locations
  #  "East US"
  #  "Central US"
  #  "North Central US"
  #  "UK South"
  #  "UK West"
  #  "North Europe"
  #  "West Europe"
###
# Resource Group Creation
resource "azurerm_resource_group" "XHST-Devel-RG" {
  name     = "XHT-Devel-Resources"
  location = "UK South"
}

# Virtual Network Ceation
resource "azurerm_virtual_network" "XHST-Devel-VN" {
  name                = "XHT-Devel-VirtNwk"
  resource_group_name = azurerm_resource_group.XHST-Dev-RG.name # Create implicit dependency req. 
  location            = azurerm_resource_group.XHST-Dev-RG.location # Grab Location from Resource so hardcoding is avoided
  address_space       = ["10.0.15.0/16"] # Dev Space IP Range
}
