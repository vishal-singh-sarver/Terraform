module "server" {
  source = "github.com/CloudTechDevOps/terraform09am/day-2-all.tf-files"
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key
}