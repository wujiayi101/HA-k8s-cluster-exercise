variable "linode_token" {
  type      = string
  sensitive = true
}

variable "do_token" {
  type      = string
  sensitive = true
}

# pass your public key string here
variable "public_key" {
  type = string
}

# upload your public key to digital ocean and get the fingerprint
variable "do_key_fingerprint" {
  type = string
}
