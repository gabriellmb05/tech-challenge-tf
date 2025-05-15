terraform {
  required_version = "1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2"
    }
  }
}

# Configure o provider AWS e adicione a tag tech_challenge
provider "aws" {
  region = var.aws_region
  default_tags {
    tags = var.aws_project_tags
  }
}