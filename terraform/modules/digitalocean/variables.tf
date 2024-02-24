variable "name" {
  type = string
}

variable "token" {
  type      = string
  sensitive = true
}

variable "ssh_keys" {
  type = list(string)
}

variable "size" {
  type = string
}
