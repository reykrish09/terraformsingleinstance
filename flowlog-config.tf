resource "aws_flow_log" "kamal-flowlogs-bucket1" {
  log_destination      = aws_s3_bucket.kamalflowlogs-bucket-k1.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.kamalvpc1.id
}