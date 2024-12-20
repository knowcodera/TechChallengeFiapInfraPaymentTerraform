terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  # somente local
  # subscription_id = var.subscription_id 
}

resource "azurerm_resource_group" "rg" {
  name     = "MyResourceGroup"
  location = "eastus"
}

resource "azurerm_mssql_server" "payment_sql_server" {
  name                         = var.payment_db_server
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.payment_db_admin_user
  administrator_login_password = var.payment_db_admin_password
}

resource "azurerm_mssql_database" "payment_sql_db" {
  name                = var.payment_db_name
  server_id           = azurerm_mssql_server.payment_sql_server.id
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb         = 2
  sku_name            = "Basic"
}

resource "azurerm_mssql_firewall_rule" "allow_azure_access" {
  name                = "AllowAzureServices"
  server_id           = azurerm_mssql_server.payment_sql_server.id
  start_ip_address    = var.my_ip_address
  end_ip_address      = var.my_ip_address
}
