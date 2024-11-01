output "sql_server_id" {
  value       = azurerm_mssql_server.sql_server.id
  description = "ID of the SQL Server"
}

output "sql_database_id" {
  value       = azurerm_mssql_database.sql_database.id
  description = "ID of the SQL Database"
}

