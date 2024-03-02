module "master1" {
  source   = "./modules/digitalocean"
  token    = var.do_token
  size     = local.big_vm_do
  ssh_keys = [var.do_key_fingerprint]
  name     = "do-master1"
}

module "master2" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = local.big_vm_linode
  authorized_keys = [var.public_key]
  label           = "linode-master2"
}

module "master3" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = local.big_vm_linode
  authorized_keys = [var.public_key]
  label           = "linode-master3"
}

module "worker1" {
  source   = "./modules/digitalocean"
  token    = var.do_token
  size     = local.small_vm_do
  ssh_keys = [var.do_key_fingerprint]
  name     = "do-worker1"
}

module "worker2" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = local.small_vm_linode
  authorized_keys = [var.public_key]
  label           = "linode-worker2"
}

module "lb1" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = local.small_vm_linode
  authorized_keys = [var.public_key]
  label           = "linode-lb"
}

module "lb2" {
  source   = "./modules/digitalocean"
  token    = var.do_token
  size     = local.small_vm_do
  ssh_keys = [var.do_key_fingerprint]
  name     = "do-lb"
}



