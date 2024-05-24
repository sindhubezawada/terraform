variable "ami_id" {
    #description = "we will give the value of ami"
    type=string

    default = "ami-0cc9838aa7ab1dce7"
  
}
variable "instance_type" {
    #description = "we will five the of instance type"
    type=string
    default = "t2.micro"
  
}
#variable "key_name" {
 #   type=string
  #  default = "git"
  
#}

