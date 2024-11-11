provider "aws" {
	region = "ap-south-1"
}

provider "aws" {
	region = "us-east-1"
	alias = "us"
}

resource "aws_s3_bucket" "us" {
  bucket = "sdcvdfvdfvdfv"
	provider = aws.us
}

resource "aws_s3_bucket" "mumbai" {
	bucket = "sdfdfvgfbvfgbb"
}