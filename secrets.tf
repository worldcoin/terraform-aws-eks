resource "random_password" "dd_clusteragent_token" {
  length  = 32
  numeric = false
  special = false
}

module "dd_clusteragent_token" {
  source = "../../aws/secretmanager/put"

  environment = var.environment
  application = "cluster-apps"
  name        = var.cluster_name

  values = {
    DD_CLUSTERAGENT_TOKEN = random_password.dd_clusteragent_token.result
  }
}
