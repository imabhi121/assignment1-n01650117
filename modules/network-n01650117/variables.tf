variable "humber_id" {
  type = string
  default = "n01650117"
}

variable "location" {
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  type = string
  default = "n01650117-RG"
}

variable "common_tags" {
  type        = map(string)
}

