provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "ilknur-bucket-01"
    key    = "ec2example/devops/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-lock"
    #encrypt = true 

  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.45"
    }
  }
}
