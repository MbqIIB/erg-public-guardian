provider "aws" {
  access_key = "{{ACCESS_KEY}}"
  secret_key = "{{SECRET_KEY}}"
  region     = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-ed100689"
  instance_type = "t2.micro"
  
  provisioner "file" {
    source      = "preinstall.sh"
    destination = "/tmp/preinstall.sh"
  }
}