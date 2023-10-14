# https://developer.hashicorp.com/terraform/language/data-sources

data "aws_ami" "ubuntu-east1" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# Multi-Region
data "aws_ami" "ubuntu-east2" {
  provider = aws.ohio
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "vm-web-east1" {
  ami           = data.aws_ami.ubuntu-east1.id
  instance_type = var.instance_type
  availability_zone = var.tag_name_east1_az
  tags = {
    Name = var.tag_name_east1
  }
}

resource "aws_instance" "vm-web-east2" {
  provider = aws.ohio

  ami           = data.aws_ami.ubuntu-east2.id
  instance_type = var.instance_type
  availability_zone = var.tag_name_east2_az
  tags = {
    Name = var.tag_name_east2
  }
}