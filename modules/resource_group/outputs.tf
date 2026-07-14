output "id" {
  description = "Azure Resource Group ID"
  value       = azurerm_resource_group.this.id
}
output "name" {
  description = "Azure Resource Group Name"
  value       = azurerm_resource_group.this.name
}
output "location" {
  description = "Azure Resource Group Location"
  value       = azurerm_resource_group.this.location
}
output "tags" {
  description = "Azure Resource Group Tags"
  value       = azurerm_resource_group.this.tags
}
