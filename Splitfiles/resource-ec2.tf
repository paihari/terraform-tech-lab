resource "aws_instance" "ec2-1" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = var.list[2]

}