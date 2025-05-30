cluster_name = "eks-test"
environment  = "test"
vpc_config = {
  vpc_id          = "vpc-1234567890abcdef0"
  private_subnets = ["subnet-1234567890abcdef0", "subnet-1234567890abcdef1", "subnet-1234567890abcdef2"]
  public_subnets  = ["subnet-1234567890abcdef3", "subnet-1234567890abcdef4", "subnet-1234567890abcdef5"]
}

datadog_api_key = "{\"DD_API_KEY\":\"1234567890\"}"

traefik_cert_arn = "arn:aws:acm:ap-south-1:123412341234:certificate/aabbcc11-1312-abcd-qwer-1a2s3d4f5g6h"

alb_logs_bucket_id = "some-bucket"

internal_nlb_enabled = true
internal_nlb_acm_arn = "arn:aws:acm:ap-south-1:123412341234:certificate/anlbcc11-1312-abcd-qwer-1a2s3d4f5g6h"

wafv2_arn = "arn:aws:wafv2:ap-south-1:123123123123:regional/webacl/foo-bar-123-baz/1a2w3e4r-zaq1-2wsx-qwer-098aa8900990"

acm_extra_arns = [
  "arn:aws:acm:ap-south-1:123412341234:certificate/aabbcc11-1312-abcd-qwer-1a2s3d4f5g6h",
  "arn:aws:acm:ap-south-1:123412341234:certificate/aabbcc11-1312-abcd-qwer-1a2s3d4f5g22",
]

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

tfe_cidr = "10.0.96.0/20"
gha_cidr = "10.52.160.0/20"
