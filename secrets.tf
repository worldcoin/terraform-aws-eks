locals {
  dd_clusteragent_token_name = "${var.environment}/${var.cluster_name}/datadog"
  replica_regions            = []
  dd_clusteragent_token_values = {
    DD_CLUSTERAGENT_TOKEN = random_password.dd_clusteragent_token.result
  }
}

resource "random_password" "dd_clusteragent_token" {
  length  = 32
  numeric = false
  special = false
}

resource "aws_secretsmanager_secret" "this" {
  name = local.dd_clusteragent_token_name

  description = "Secret created by terraform for ${var.environment}/${var.cluster_name}"

  tags = {
    Name        = local.dd_clusteragent_token_name
    Application = var.cluster_name
  }

  recovery_window_in_days = 0 # Force instant deletion

  dynamic "replica" {
    for_each = setsubtract(local.replica_regions, [data.aws_region.current.name])
    content {
      region = replica.value
    }
  }
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = jsonencode(local.dd_clusteragent_token_values)
}
