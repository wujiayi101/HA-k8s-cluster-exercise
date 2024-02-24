output "worker1_public_ip" {
  value = module.worker1.public_ip
}

output "master1_public_ip" {
  value = module.master1.public_ip
}

output "worker2_public_ip" {
  value = module.worker2.public_ip
}

output "master2_public_ip" {
  value = module.master2.public_ip
}

output "master3_public_ip" {
  value = module.master3.public_ip
}

output "lb_public_ip" {
  value = module.lb.public_ip
}
