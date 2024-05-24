#s3 bucket creation to store the state file
resource "aws_s3_bucket" "remote" {
    bucket = "state-remote-store5"

  
}


#versioning enabled
resource "aws_s3_bucket_versioning" "version" {
    bucket = aws_s3_bucket.remote.id
    versioning_configuration {
      status="Enabled"
   }
}  

    
  

#dynamodb creation for lockimg process
resource "aws_dynamodb_table" "terraformdynamodb" {
  name="terraform-state-lock-dynamo"
  hash_key="LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name="LockID"
    type = "S"
    
  }

  
}
    
