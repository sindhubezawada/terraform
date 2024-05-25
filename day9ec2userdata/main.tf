resource "aws_instance" "name" {
    ami="ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "git"
    user_data = file("~/.ssh/id_ed25519")
    tags = {
        Name="userdata-tf"
    }
  
}