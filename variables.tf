variable "payment_db_admin_user" {
  description = "Nome do administrador do SQL Server para o banco de dados Payment"
  type        = string
  sensitive   = true
}

variable "payment_db_admin_password" {
  description = "Senha do administrador do SQL Server para o banco de dados Payment"
  type        = string
  sensitive   = true
}

variable "payment_db_server" {
  description = "Nome do servidor de banco de dados para Payment"
  type        = string
}

variable "payment_db_name" {
  description = "Nome do banco de dados para Payment"
  type        = string
}

variable "my_ip_address" {
  description = "Seu endereço IP público"
  type        = string
  sensitive = true
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}