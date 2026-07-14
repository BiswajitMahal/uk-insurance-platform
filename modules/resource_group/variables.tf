variable "resource_group_config" {
  description = "Configuration for the resource group"
  type = object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  })

  validation {
    condition     = startswith(var.resource_group_config.name, "rg-")
    error_message = "The resource group name must start with 'rg-'."
  }
  validation {
    condition = contains(
      [
        "Central India",
        "East US",
        "West Europe"
      ],
      var.resource_group_config.location
    )
    error_message = "Unsupported Azure Region."
  }
}

