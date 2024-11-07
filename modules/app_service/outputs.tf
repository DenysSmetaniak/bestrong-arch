output "app_service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_service_plan.bestrong_sp.id
}

output "app_service_plan_name" {
  description = "The name of the App Service Plan"
  value       = azurerm_service_plan.bestrong_sp.name
}

output "app_service_name" {
  description = "The name of the App Service"
  value       = azurerm_linux_web_app.bestrong_appservice.name
}

output "app_service_default_hostname" {
  description = "The default hostname of the App Service"
  value       = azurerm_linux_web_app.bestrong_appservice.default_hostname
}

output "app_service_identity_principal_id" {
  description = "The principal ID of the system-assigned identity for the App Service"
  value       = azurerm_linux_web_app.bestrong_appservice.identity[0].principal_id
}

output "app_service_id" {
  description = "The ID of the App Service"
  value       = azurerm_linux_web_app.bestrong_appservice.id
}





