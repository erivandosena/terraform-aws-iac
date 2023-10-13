resource "aws_instance" "vm-web" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"

  tags = {
    Name = "Elastic Compute Cloud - AWS EC2"
  }
}