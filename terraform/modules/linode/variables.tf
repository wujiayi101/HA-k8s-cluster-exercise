variable "label" {
  type = string
}

variable "token" {
  type      = string
  sensitive = true
}

variable "authorized_keys" {
  type = list(string)
}

variable "type" {
  type = string
}
