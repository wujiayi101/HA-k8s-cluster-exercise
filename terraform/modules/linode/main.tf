resource "linode_instance" "this" {
  image           = "linode/centos-stream8"
  label           = var.label
  region          = "ap-south"
  type            = var.type
  authorized_keys = var.authorized_keys
}
