cluster_name = "eks-test"
environment  = "test"
vpc_config = {
  vpc_id          = "vpc-1234567890abcdef0"
  private_subnets = ["subnet-1234567890abcdef0", "subnet-1234567890abcdef1", "subnet-1234567890abcdef2"]
  public_subnets  = ["subnet-1234567890abcdef3", "subnet-1234567890abcdef4", "subnet-1234567890abcdef5"]
}

datadog_api_key = "{\"DD_API_KEY\":\"1234567890\"}"

traefik_cert_arn = "arn:aws:acm:ap-south-1:123412341234:certificate/aabbcc11-1312-abcd-qwer-1a2s3d4f5g6h"

alb_logs_bucket_id = "arn:aws:s3:::some-bucket"

internal_nlb_enabled = true
internal_nlb_acm_arn = "arn:aws:acm:ap-south-1:123412341234:certificate/anlbcc11-1312-abcd-qwer-1a2s3d4f5g6h"
