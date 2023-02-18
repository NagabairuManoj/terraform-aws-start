terraform {
  #required_version = ">= 0.12"
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = ">= 4.16"
        }
    }
}
providers {
    aws = {
        region = "ap-south-1"
        profile = "default"
    }
}

resource "aws_instance" "newos" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
    key_name = var.key_name

}
