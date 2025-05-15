terraform {
  backend "s3" {
    bucket = "terraform-chanllenge-tf"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-chanllenge-tf"
  }
}