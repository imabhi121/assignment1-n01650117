variable "humber_id" {
  type    = string
  default = "n01650117"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_group_name" {
  type = string
  default = "n01650117-RG"
}

variable "admin_username" {
  type    = string
  default = "n01650117"
}

variable "admin_password" {
  type    = string
  default = "Abhi@123"
}

variable "common_tags" {
  type = map(string)
}
