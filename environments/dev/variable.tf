variable "resource_group" {
  description = "resource group"
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  }))
}
