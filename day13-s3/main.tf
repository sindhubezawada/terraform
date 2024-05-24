resource "aws_instance" "instancce" {
  ami= "ami-0cc9838aa7ab1dce7"
    
  instance_type = "t2.micro"
    key_name = "git"

    tags = {
      Name="newtag"
    }
  
}
resource "aws_s3_bucket" "remote" {
    bucket = "state-remote-store5"

  
}
