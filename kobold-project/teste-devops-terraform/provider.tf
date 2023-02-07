terraform {
  backend "s3" {
    bucket = "kobold-terraform-sandbox"
    key    = "remote-state/us-west-1/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.8.0"
    }
    template = {
      source  = "hashicorp/template"
      version = ">= 2.2.0"
    }
  }

  required_version = ">= 1.3.3"
}

provider "aws" {
  region = "us-east-1"
}
