
resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "luffy.png"
  source = "luffy.png"
  acl    = "public-read"
}


resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"

  }

  depends_on = [aws_s3_bucket_acl.example]
}
