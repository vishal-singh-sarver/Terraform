provider "aws" {
  region = "ap-south-1"
}

#-------store the statefile ------#
resource "aws_s3_bucket" "s3_1" {
    bucket = "s3bucketstatetf"
}

resource "aws_dynamodb_table" "dynamodb" {
	name = "terraform-state-lock-dynamo"
	hash_key = "LockID"
	read_capacity = 20
	write_capacity = 20
	attribute { 
		name = "LockID"
		type = "S"
	}
}