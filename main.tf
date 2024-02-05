/*provider "aws" {
     region="us-east-1"

 }*/

resource "aws_instance" "web" {
 
  /* ami           = data.aws_ami.app_ami.image_id*/
ami="al2023-ami-2023.3.20240131.0-kernel-6.1-x86_64"
  
  instance_type = "t2.micro"
  subnet_id = "subnet-096b141240617b9b8"
  security_groups=["sg-084371fe3d9b5e452"]
  
  tags = {
    Name = "HelloWorld"
  }
}


# resource "aws_vpc" "main" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "main"
#   }
# }

//datasource : to call an ec2 instance

/*data "aws_ami" "app_ami" {
#   instance_alias = "foo" //instance id
most_recent = true
filter {
  name="name"
  values = [ "ami-0cf10cdf9fcd62d37" ]
}
}*/

# resource "aws_api_gateway_domain_name" "example" {
#   certificate_arn = aws_acm_certificate_validation.example.certificate_arn
#   domain_name     = "api.example.com"
# }

