terraform {
  #required_version = ">= 0.12"
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = ">= 4.16"
        }
    }
}
provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAQXTEG5FLWNN3JT7M"
    secret_key = "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"
}

resource "aws_instance" "newos" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
    key_name = var.key_name

}
