resource "random_password" "dd_clusteragent_token" {
  length  = 32
  numeric = false
  special = false
}

module "dd_clusteragent_token" {
  source = "../../aws/secretmanager/put"

  environment = var.environment
  application = var.cluster_name
  name        = "datadog"

  values = {
    DD_CLUSTERAGENT_TOKEN = random_password.dd_clusteragent_token.result
  }
}
