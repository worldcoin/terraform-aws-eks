cluster_name = "eks-test"
environment  = "test"
region       = "us-east-1"
vpc_config = {
  vpc_id          = "vpc-1234567890abcdef0"
  private_subnets = ["subnet-1234567890abcdef0", "subnet-1234567890abcdef1", "subnet-1234567890abcdef2"]
  public_subnets  = ["subnet-1234567890abcdef3", "subnet-1234567890abcdef4", "subnet-1234567890abcdef5"]
}

datadog_api_key = "{\"DD_API_KEY\":\"1234567890\"}"

external_cert_arn = "arn:aws:acm:ap-south-1:123412341234:certificate/aabbcc11-1312-abcd-qwer-1a2s3d4f5g6h"

alb_logs_bucket_id = "some-bucket"

internal_cert_arn = "arn:aws:acm:ap-south-1:123412341234:certificate/anlbcc11-1312-abcd-qwer-1a2s3d4f5g6h"

additional_security_group_rules = [
  {
    "description" = "Rule for sg-1q2w3e4r5t6y7u8ia"
    "from_port"   = 0
    "protocol"    = "-1"
    "sg_id"       = "sg-1q2w3e4r5t6y7u8ia"
    "to_port"     = 0
    "type"        = "ingress"
  },
  {
    "description" = "Rule for sg-zaq12wsxcde34rfv0"
    "from_port"   = 0
    "protocol"    = "-1"
    "sg_id"       = "sg-zaq12wsxcde34rfv0"
    "to_port"     = 0
    "type"        = "ingress"
  },
]

extra_role_mapping = [
  {
    "groups" = [
      "system:masters",
    ]
    "rolearn"  = "arn:aws:iam::123123123123:role/AWSReservedSSO_AdministratorAccess"
    "username" = "admin"
  },
  {
    "groups" = [
      "system:masters",
    ]
    "rolearn"  = "arn:aws:iam::123123123123:role/AWSReservedSSO_InfrastructureTeamAccess"
    "username" = "admin"
  },
  {
    "groups" = [
      "PowerUserAccess",
    ]
    "rolearn"  = "arn:aws:iam::123123123123:role/AWSReservedSSO_PowerUserAccess"
    "username" = "PowerUserAccess"
  },
  {
    "groups" = [
      "ViewOnlyAccess",
    ]
    "rolearn"  = ""
    "username" = "ViewOnlyAccess"
  },
]

eks_node_group = {
  arch  = "amd64"
  types = ["t3a.large"]
}

monitoring_enabled = false
