# https://developer.hashicorp.com/terraform/language/expressions/types
# https://developer.hashicorp.com/terraform/language/expressions/references
# https://developer.hashicorp.com/terraform/language/values/outputs

output "ip_address" {
  value = aws_instance.vm-web.public_ip
}

output "dns_name" {
  value = aws_instance.vm-web.public_dns
}