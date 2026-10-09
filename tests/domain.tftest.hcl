mock_provider "aws" {
  source = "./tests/mocks/aws"
}

mock_provider "datadog" {}

mock_provider "cloudflare" {
  mock_data "cloudflare_zone" {
    defaults = {
      zone_id = "1e3fd9d1f03a2858c2c8e0a7b9d6796e"
    }
  }
}

mock_provider "kubernetes" {
  source = "./tests/mocks/kubernetes"
}

variables {
  kubernetes_provider_enabled  = false
  gateway_api_crds_enabled     = true
  gateway_api_external_enabled = true
}

run "monitoring_dns_uses_zone_id" {
  command = plan

  variables {
    monitoring_enabled = true
  }

  assert {
    condition     = cloudflare_dns_record.monitoring[0].zone_id == "1e3fd9d1f03a2858c2c8e0a7b9d6796e"
    error_message = "Monitoring DNS must use the selected Cloudflare zone ID."
  }
}

run "disabled_monitoring_has_no_zone_or_dns" {
  command = plan

  variables {
    monitoring_enabled = false
  }

  assert {
    condition     = length(data.cloudflare_zone.worldcoin_dev) == 0 && length(cloudflare_dns_record.monitoring) == 0
    error_message = "Disabled monitoring must not read a zone or create monitoring DNS."
  }
}
