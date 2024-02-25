# https://api.linode.com/v4/linode/types

module "lb" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = "g6-nanode-1"
  authorized_keys = [var.public_key]
  label           = "loadbalancer"
}

module "master1" {
  source   = "./modules/digitalocean"
  token    = var.do_token
  size     = "s-2vcpu-2gb"
  ssh_keys = [var.do_key_fingerprint]
  name     = "do-master1"
}

module "master2" {
  source   = "./modules/digitalocean"
  token    = var.do_token
  size     = "s-2vcpu-2gb"
  ssh_keys = [var.do_key_fingerprint]
  name     = "do-master2"
}

module "master3" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = "g6-standard-2"
  authorized_keys = [var.public_key]
  label           = "linode-master3"
}

module "worker1" {
  source   = "./modules/digitalocean"
  token    = var.do_token
  size     = "s-1vcpu-1gb"
  ssh_keys = [var.do_key_fingerprint]
  name     = "do-worker1"
}

module "worker2" {
  source          = "./modules/linode"
  token           = var.linode_token
  type            = "g6-nanode-1"
  authorized_keys = [var.public_key]
  label           = "linode-worker2"
}
