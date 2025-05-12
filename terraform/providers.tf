terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

# Default provider
provider "aws" {
  region = "us-east-1"
}

# Provider with alias
provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}
