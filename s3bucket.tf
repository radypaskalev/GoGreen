resource "aws_s3_bucket" "gogreen" {
  bucket = "raduchoio-bucket-102"
  acl    = "private"

  tags = {
    Name        = "My tf bucket"
    Environment = "dev"
  }
}