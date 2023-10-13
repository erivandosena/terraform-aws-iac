# https://developer.hashicorp.com/terraform/language/expressions/references
# https://developer.hashicorp.com/terraform/language/expressions/types
# https://developer.hashicorp.com/terraform/language/values/outputs
# https://docs.aws.amazon.com/pt_br/documentdb/latest/developerguide/regions-and-azs.html

output "ip_address_virginia" {
  value = aws_instance.vm-web-east1.public_ip
}

output "dns_name_virginia" {
  value = aws_instance.vm-web-east1.public_dns
}

output "aws_zone_virginia" {
  value = aws_instance.vm-web-east1.availability_zone
}

# Multi-Region
output "ip_address_ohio" {
  value = aws_instance.vm-web-east2.public_ip
}

output "dns_name_ohio" {
  value = aws_instance.vm-web-east2.public_dns
}

output "aws_zone_ohio" {
  value = aws_instance.vm-web-east2.availability_zone
}
