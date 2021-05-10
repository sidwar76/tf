variable "name" {
  type        = "string"
  description = "Location of the azure resource group."
  default     = "exampleitem"
}

variable "loginid" {
  type        = "string"
  description = "Name of the deployment environment"
  default     = "mradministrator"
}

variable "password" {
  type        = "string"
  description = "Location to deploy the resoruce group"
  default     = "thisIsDog11"
}

variable "plan_tier" {
  type        = "string"
  description = "The tier of app service plan to create"
  default     = "Standard"
}

variable "plan_sku" {
  type        = "string"
  description = "The sku of app service plan to create"
  default     = "S1"
}

variable "prefix" {
  default = "tfvmex"
}
variable "location" {
  type        = "string"
  description = "Location of the azure resource group."
  default     = "East US"
}
