resource "aws_s3_bucket" "abc" {
  bucket = "mybucket-new"
 
  tags = {
    Name = "mybucket-new"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.abc.id
  acl = "private"
}
