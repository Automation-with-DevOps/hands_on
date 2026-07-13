terraform {
  backend "s3" {
    bucket = "sameer-bucket-0202"
    region = "ap-south-1"
    key = "dev/terraform.tfstate"
    
  }
}