provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "dev" {
    ami=var.ami_id
    instance_type = var.instance_type
    key_name = var.keyname

    tags = {
      Name="newtag"
    }
  
}