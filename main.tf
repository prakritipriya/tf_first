/*provider "aws" {
     region="us-east-1"

 }*/

resource "aws_instance" "web" {
 
   ami= data.aws_ami.app_ami.image_id

  
  instance_type = "t3.micro"
  subnet_id = "subnet-096b141240617b9b8"
  security_groups=["sg-084371fe3d9b5e452"]
  
  tags = {
    Name = "HelloWorld"
  }
}

data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.3.20240122.0-kernel-6.1-x86_64"]
  }

}





