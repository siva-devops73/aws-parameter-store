terraform {
  backend "s3" {
    bucket = "terraform-s73"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
