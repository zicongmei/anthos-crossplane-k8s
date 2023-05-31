
variable "aks_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "aks_name_prefix" {
  default     = "zicong-import"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}