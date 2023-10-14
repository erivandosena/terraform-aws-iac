# https://developer.hashicorp.com/terraform/language/values/variables

variable "instance_type" {
  type        = string
  description = "O tipo da instância."
  default     = "t2.micro"
}

variable "tag_name_east1" {
  type        = string
  description = "O nome da tag para instância em us-east-1."
  default     = "AWS EC2 - US East (N. Virginia)"
}

variable "tag_name_east2" {
  type        = string
  description = "O nome da tag para instância em us-east-2."
  default     = "AWS EC2 - US East (Ohio)"
}

variable "tag_name_east1_az" {
  type        = string
  description = "O nome da zona de disponibilidade para instância em us-east-1."
  default     = "us-east-1a"
}

variable "tag_name_east2_az" {
  type        = string
  description = "O nome da zona de disponibilidade para instância em us-east-2."
  default     = "us-east-2a"
}