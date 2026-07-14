module "resource_group" {
  source                = "../../modules/resource_group"
  for_each              = var.resource_group
  resource_group_config = each.value
}