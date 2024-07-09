locals {
  common_tags = {
    Assignment    = "CCGC 5502 Automation Assignment"
    Name          = "abhishek.shrimali"
    ExpirationDate= "2024-12-31"
    Environment   = "Learning"
  }
}

module "rgroup-n01650117" {
  source      = "./modules/rgroup-n01650117"
  common_tags = local.common_tags
}

module "network-n01650117" {
  source      = "./modules/network-n01650117"
  common_tags = local.common_tags

  depends_on = [module.rgroup-n01650117]
}

module "common-n01650117" {
  source      = "./modules/common-n01650117"
  common_tags = local.common_tags

  depends_on = [module.rgroup-n01650117]
}

module "vmlinux-n01650117" {
  source              = "./modules/vmlinux-n01650117"
  subnet_id           = module.network-n01650117.subnet_id
  storage_account_uri = module.common-n01650117.storage_account_uri
  common_tags         = local.common_tags

  depends_on = [
    module.rgroup-n01650117,
    module.network-n01650117,
    module.common-n01650117
  ]
}

module "vmwindows-n01650117" {
  source              = "./modules/vmwindows-n01650117"
  subnet_id           = module.network-n01650117.subnet_id
  storage_account_uri = module.common-n01650117.storage_account_uri
  common_tags         = local.common_tags

  depends_on = [
    module.rgroup-n01650117,
    module.network-n01650117,
    module.common-n01650117
  ]
}

module "datadisk-n01650117" {
  source              = "./modules/datadisk-n01650117"
  linux_vm_ids        = module.vmlinux-n01650117.vm_ids
  windows_vm_id       = module.vmwindows-n01650117.vm_id
  common_tags         = local.common_tags

  depends_on = [
    module.rgroup-n01650117,
    module.network-n01650117,
    module.common-n01650117
  ]
}

module "loadbalancer-n01650117" {
  source           = "./modules/loadbalancer-n01650117"
  linux_vm_nic_ids = [for nic in module.vmlinux-n01650117.vm_nic_ids : nic]
  common_tags      = local.common_tags

  depends_on = [
    module.rgroup-n01650117,
    module.network-n01650117,
    module.common-n01650117
  ]
}

module "database-n01650117" {
  source      = "./modules/database-n01650117"
  common_tags = local.common_tags
}
