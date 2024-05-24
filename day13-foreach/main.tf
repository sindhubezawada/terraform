resource "aws_instance" "sandbox" {
    ami=var.ami_id
    instance_type = var.instance_type
    #key_name = var.key_name
    for_each = toset(var.sandboxes)
    tags={
        Name=each.value
    }
  
}
