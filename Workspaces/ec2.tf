provider "aws" {
  region     = "eu-central-1"
  access_key = "<<ACCESS_KEY>>"
  secret_key = "<<ACCESS_SECRET>>"


}

resource "aws_instance" "ec2-1" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = lookup(var.workspace-instance-type, terraform.workspace)

}

variable "workspace-instance-type" {
  type = map(any)
  default = {
    default    = "t2.small"
    dev        = "t2.nano"
    staging    = "t2.small"
    production = "t2.micro"
  }

}