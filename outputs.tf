# output "app_service_url" {
#   value       = module.app_service.app_service_url
#   description = "URL of the App Service"
# }


output "app_insights_instrumentation_key" {
  value       = module.app_insights.app_insights_instrumentation_key
  description = "Instrumentation key for Application Insights"
  sensitive   = true
}

output "acr_login_server" {
  value       = module.acr.acr_login_server
  description = "Login server URL for the ACR"
}

output "key_vault_uri" {
  value       = module.key_vault.key_vault_uri
  description = "URI of the Key Vault"
}

output "sql_server_id" {
  value       = module.mssql.sql_server_id
  description = "ID of the SQL Server"
}

output "sql_database_id" {
  value       = module.mssql.sql_database_id
  description = "ID of the SQL Database"
}

output "storage_account_id" {
  value       = module.storage_account.storage_account_id
  description = "ID of the Storage Account"
}

output "fileshare_name" {
  value       = module.storage_account.fileshare_name
  description = "Name of the File Share"
}

output "storage_account_primary_connection_string" {
  value       = module.storage_account.storage_account_primary_connection_string
  description = "Primary connection string for the Storage Account"
  sensitive   = true
}
