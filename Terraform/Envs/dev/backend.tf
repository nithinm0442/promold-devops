terraform {
  backend "s3" {
    bucket         = "promold-terraform-state-dev"
    key            = "dev/terraform.tfstate"
    region         = "ca-central-1"
    dynamodb_table = "terraform-state-lock-dev"
    encrypt        = true
  }
}
