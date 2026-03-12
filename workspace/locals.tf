locals {
  ami_id = data.aws_ami.Devops.id
  environment = terraform.workspace
}