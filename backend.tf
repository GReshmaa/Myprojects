terraform {
  backend "s3" {
    bucket = "terraformstate-032125"
    key    = "aws_state/terraform.tfstate"
    region = "ap-south-1"
  }
}
