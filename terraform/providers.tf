terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}

# NOTE: currently the _only_ supported provider region is us-east-1.
provider "aws" {
  region  = "us-east-1"
}