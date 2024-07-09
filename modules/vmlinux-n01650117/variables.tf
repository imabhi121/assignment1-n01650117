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

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "n01650117"
}

variable "subnet_id" {
  type = string
}

variable "storage_account_uri" {
  type = string
}

variable "public_key" {
  type = string
  default = "/home/n01650117/.ssh/id_rsa.pub"
}

variable "private_key" {
  type = string
  default = "/home/n01650117/.ssh/id_rsa"
}

variable "vm_names" {
  type    = map(string)
  default = {
    "vm1" = "vm1"
    "vm2" = "vm2"
    "vm3" = "vm3"
  }
}

variable "common_tags" {
  type        = map(string)
}
