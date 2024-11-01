output "app_insights_instrumentation_key" {
  value       = azurerm_application_insights.app_insights.instrumentation_key
  description = "Instrumentation key for Application Insights"
  sensitive   = true
}


