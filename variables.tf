variable "rg_name" {
  type        = string
  description = "The name of the resource group to create."
  default     = "rg-demo-parent-child"
}

variable "rg_location" {
  type        = string
  description = "The Azure region where the resource group will be deployed."
  default     = "East US"
}

variable "tags" {
  type        = map(string)
  description = "Tags to attach to the resource group."
  default = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
