resource "aws_s3_bucket" "test_s3" {
  bucket = "sameer-bucket-0202"


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.test_s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.test_vpc.id
  service_name = "com.amazonaws.ap-south-1.s3"
}
