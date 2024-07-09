variable "humber_id" {
  type    = string
  default = "n01650117"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_group_name" {
  type    = string
  default = "n01650117-RG"
}

variable "disk_count" {
  type    = number
  default = 4
}

variable "linux_vm_ids" {
  type    = map(string)
}

variable "linux_vm_names" {
  type    = map(number)
  default = {
    "vm1" = 0
    "vm2" = 1
    "vm3" = 2
  }
}

variable "windows_vm_id" {
  type    = string
}

variable "common_tags" {
  type        = map(string)
}
