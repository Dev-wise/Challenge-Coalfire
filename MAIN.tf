module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"
  name    = "my-vpc"
  cidr    = "10.1.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.1.2.0/24", "10.1.3.0/24", ]
  public_subnets  = ["10.1.0.0/24", "10.1.1.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
