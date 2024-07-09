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

variable "vm_size" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "admin_username" {
  type    = string
  default = "n01650117"
}

variable "admin_password" {
  type    = string
  default = "Abhi@123"
}

variable "subnet_id" {
  type = string
}

variable "storage_account_uri" {
  type = string
}

variable "vm_count" {
  type    = number
  default = 1
}

variable "common_tags" {
  type = map(string)
  default = {
    Assignment    = "CCGC 5502 Automation Assignment"
    Name          = "abhishek.shrimali"
    ExpirationDate= "2024-12-31"
    Environment   = "Learning"
  }
}
