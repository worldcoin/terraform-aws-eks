terraform {
  required_version = ">= 1.11.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.57.1"
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
      version = ">= 5.8"
    }

    time = {
      source  = "hashicorp/time"
      version = ">= 0.9"
    }
  }
}
