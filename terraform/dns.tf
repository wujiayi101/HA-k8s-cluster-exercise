
provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_record" "lb_a_record" {
  zone_id = "Z07390752PGZAYQG9MZEQ"
  name    = "n8n.wu101.com"
  type    = "A"
  ttl     = 300

  records = [
    module.lb1.public_ip,
    module.lb2.public_ip,
  ]
}
