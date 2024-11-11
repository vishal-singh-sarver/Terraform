provider "aws" {
	profile = "default"
	alias = "default"
}

provider "aws" {
	profile = "account"
	alias = "account2"
}

resource "aws_s3_bucket" "us" {
  bucket = "sdcvdfvdfvdfv"
	provider = aws.account2
}

resource "aws_s3_bucket" "mumbai" {
	bucket = "sdfdfvgfbvfgbb"
}