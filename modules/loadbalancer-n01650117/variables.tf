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

variable "linux_vm_nic_ids" {
  type = list(string)
}

variable "public_ip_address_allocation" {
  type    = string
  default = "Static"
}

variable "common_tags" {
  type = map(string)
}
