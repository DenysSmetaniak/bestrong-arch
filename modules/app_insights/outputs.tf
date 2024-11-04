output "app_insights_id" {
  description = "The ID of the Application Insights resource"
  value       = azurerm_application_insights.bestrong_app_insights.id
}

output "app_insights_instrumentation_key" {
  description = "The instrumentation key for Application Insights"
  value       = azurerm_application_insights.bestrong_app_insights.instrumentation_key
}


