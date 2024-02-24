variable "linode_token" {
  type      = string
  sensitive = true
}

variable "do_token" {
  type      = string
  sensitive = true
}

variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDVypxDmnnNpxNkBfF6GLR+VbQxICuoXyDRm11zeqB40RdrXS8ufwjbGXtCsFDIS/cchqmddwhHzSvsNyPQ6tEGjRzblKb6Pe6g3Wmq2DLutbnWV/pUIJg0nl/y7ZQkTyB42fYFwQeXsj92mt0hLClqwheJo/gdaiTkiNlQq24AT+RVitF1QYtOTbFnlCZtSnd5RN//MWe2fWNpnZHIZBu3wtEkKSGy/RBHcQcTIlgXyhbVc+1JmioQVYhHkSkSAGMOXGOb/XcSixiRkdu7BfwnC9bFpCHNGIo4pyifAgOdhsaqURSt0T1f1yaFc1JGm0hxsHxusVKrXFzkl0626zv0Xn6hYZt3OqixzS2b2PcKLHvwk+z9px0oifFlMdK+s+aeLiAicsFLaTQxvxjcxfF5fmXpjBt0yNfyXdln5yTIrZLojHuoIfLJKJ/iHGI4STt8cIbwwqjlQCJ3sDNngpjfF6ycLkc+W9giE7vSDc/7/dQ2HmqztStbzxXjNJ/CGMmjXDjsIv1fzsewbgTNQAMmUxMQktkj5l1J34KY8t0EQ8LBUGUDBuiX4lUKXH3mxoopLCEA7uN4Km9jxVj0BIhWbpx8VoqhvatmTP5/nXaGRgkKEKV+1YOwpcQ3US+3BhDl59iOnhkKirAlyTNUZUvRjuXllwMot53Dr988De1Pw== your_email@example.com"
}

variable "do_key_fingerprint" {
  type    = string
  default = "0f:e1:1f:ec:0e:15:6f:87:8d:99:71:0b:27:71:8c:64"
}

