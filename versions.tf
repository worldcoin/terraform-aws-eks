terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
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
      version = ">= 3.3"
    }

    datadog = {
      source  = "DataDog/datadog"
      version = ">= 3.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 4.10"
    }
  }
}
