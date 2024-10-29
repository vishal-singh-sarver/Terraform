terraform {
  backend "s3" {
    bucket = "s3bucketstatetf"
    key = "dev/terraform.tfstate"
  }
}