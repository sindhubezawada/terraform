terraform {
  backend"s3" {
    bucket="state-remote-store517"
    key="terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt =true
  }
}