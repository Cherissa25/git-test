#Configure the AWS Provider
provider "aws" {
  region = "availabity_zone"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = "Server_name"
  availability_zone = "Availabity_zone"
  blueprint_id      = "OS+APPS_BLUEPRINT"
  bundle_id         = "instance_plan"
  key_pair_name = "AlreadyExisting_Keypair-name"
  tags = {
    name = "tag-name"
    env  = "dev"
    owner = "owner_name"
  }
}

resource "aws_iam_group" "group1" {
  name = "group_name"
}

resource "aws_iam_user" "demo-user" {
  name = "username"
}