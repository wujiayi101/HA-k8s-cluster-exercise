resource "digitalocean_droplet" "this" {
  image    = "centos-stream-8-x64"
  size     = var.size
  name     = var.name
  region   = "sgp1"
  ssh_keys = var.ssh_keys
}
