provider "aws" {
    region="ap-south-1"
  
}
resource "aws_instance" "test" {
    ami="ami-0cc9838aa7ab1dce7"
    instance_type="t2.micro"
    availability_zone = "ap-south-1b"
    key_name = "git"
    tags={
        name="test"
    }
  

lifecycle{
    create_before_destroy=true
}
#lifecycle{
 #   prevent_destroy=true
#}

#lifecycle{
   # ignore-changes=[tags]
#}
}