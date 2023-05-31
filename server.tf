Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = "MyDevOps"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_7_2009_01"
  bundle_id         = "nano_1_0"
  key_pair_name = "Week3"
  tags = {
    name = "Terraform devops"
    env  = "dev"
    owner = "Cherissa"
  }
}

resource "aws_iam_group" "group1" {
  name = "terraform"
}

resource "aws_iam_user" "demo-user" {
  name = "Cherie"
}

