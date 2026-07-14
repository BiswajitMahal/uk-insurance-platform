resource "azurerm_resource_group" "this" {
  name     = var.resource_group_config.name
  location = var.resource_group_config.location
  tags = merge(
    var.resource_group_config.tags,
    local.default_tags
  )
  lifecycle {
    prevent_destroy = true
  }
}
