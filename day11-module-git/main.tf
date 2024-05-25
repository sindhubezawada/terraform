module "second-module" {
    source = "github.com/sindhubezawada/terraform/module-practise"
    ami_id="ami-0cc9838aa7ab1dce7"
    instance_type="t2.micro"
   # keyname = "git"

  
}