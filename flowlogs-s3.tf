resource "aws_s3_bucket" "kamalflowlogs-bucket-k1" {
  bucket = "my-tf-flowlog-bucket10"

  tags = {
    Name        = "flowlog bucket10"
    Environment = "Dev"
  }
  depends_on = [aws_s3_bucket.kamalflowlogs-bucket-k2]
#   lifecycle {
#     prevent_destroy = false
#     create_before_destroy=false
#   }
}

resource "aws_s3_bucket" "kamalflowlogs-bucket-k2" {
  bucket = "my-tf-flowlog-bucket2"

  tags = {
    Name        = "flowlog bucket2"
    Environment = "Dev"
  }
  depends_on = [aws_s3_bucket.kamalflowlogs-bucket-k2]
}

resource "aws_s3_bucket" "kamalflowlogs-bucket-k3" {
  bucket = "my-tf-flowlog-bucket30"

  tags = {
    Name        = "flowlog bucket30"
    Environment = "Dev"
  }
  depends_on = [aws_s3_bucket.kamalflowlogs-bucket-k1]
}