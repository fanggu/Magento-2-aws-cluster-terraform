terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 2.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "~> 2.0"
    }
  }
}


provider "aws" {
  alias   = "uswest2"
  region  = "us-west-2"
  profile = "us-njkm2dev"

  default_tags {
    tags = {
      Managed     = "terraform"
      Config      = "magenx"
      Environment = "development"
    }
  }
}

# To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.
provider "aws" {
  alias  = "useast1"
  region = "us-east-1"
}

provider "null" {}
provider "random" {}
provider "template" {}
provider "external" {}

