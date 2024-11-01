output "principal_id" {
  value       = azurerm_linux_web_app.app_service.identity[0].principal_id
  description = "Principal ID of the App Service Managed Identity"
}





