terraform {
  backend "s3" {
    bucket         = "mikemo-simple-go-app-ecs-tfstate"
    key            = "mikemo-simple-go-app-ecs.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "mikemo-simple-go-app-ecs-tfstate-lock"
  }
}

provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Owner       = var.contact
      ManagedBy   = "Terraform"
      CreatedBy   = "Mike Mo"
    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
    CreatedBy   = "Mike Mo"
  }
}