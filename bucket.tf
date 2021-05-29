resource "aws_s3_bucket" "b1" {

  bucket = "srikanthbucket"

  acl    = "public-read"

  policy = file("policy.json")

  website {

    index_document = "index.html"

    error_document = "error.html"
  }



  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}

resource "aws_s3_bucket_object" "object1" {

  bucket       = aws_s3_bucket.b1.id

  key          = "index.html"

  acl          = "public-read-write"
