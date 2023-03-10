terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">=3.4.3"
    }
  }
}
