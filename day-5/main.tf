resource "aws_s3_bucket" "s3_1" {
  bucket = "asddfgdfgvdfg"
}

resource "aws_s3_bucket_versioning" "version" {
  bucket = aws_s3_bucket.s3_1.id
  versioning_configuration {
    status = "Enabled"
  }
  # below examples are for lifecycle meta_arguments 

  # lifecycle {
  #   create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
  # }

  # lifecycle {
  #   prevent_destroy = true   #Terraform will error when it attempts to destroy a resource when this is set to true:
  # }

  # lifecycle {
  #   ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
  # }
}
