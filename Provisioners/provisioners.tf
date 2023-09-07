provider "aws" {
  region     = "eu-central-1"
  access_key = "<<ACCESS_KEY>>"
  secret_key = "<<ACCESS_SECRET>>"


}

resource "aws_instance" "ec2-1" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name      = "aws-key-pair"
  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./aws-key-pair.pem")
      host        = self.public_ip

    }
  }

}
