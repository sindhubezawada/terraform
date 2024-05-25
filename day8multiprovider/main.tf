provider "aws" {
    region = "ap-south-1"
  
}
provider "aws" {
    region= "us-east-2"
    alias = "america"
  
}
resource "aws_s3_bucket" "test1" {
    bucket = "jhgfdsaqwe4rtyhuh"
  
}
resource "aws_s3_bucket" "test2" {
  bucket= "zxcvbhytrew"
  provider = aws.america
}