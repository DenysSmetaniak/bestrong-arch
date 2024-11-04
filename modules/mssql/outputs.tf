output "mssql_server_id" {
  description = "The ID of the MSSQL Server"
  value       = azurerm_mssql_server.bestrong_mssql_srv.id
}

output "mssql_server_fqdn" {
  description = "The fully qualified domain name of the MSSQL Server"
  value       = azurerm_mssql_server.bestrong_mssql_srv.fully_qualified_domain_name
}

output "mssql_database_id" {
  description = "The ID of the MSSQL Database"
  value       = azurerm_mssql_database.bestrong_mssql_db.id
}

output "private_endpoint_id" {
  description = "The ID of the Private Endpoint for MSSQL Server"
  value       = azurerm_private_endpoint.bestrong_mssql_pe.id
}

