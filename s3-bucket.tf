resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-ravi-10022025"
}
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.my_bucket.id
  policy = data.aws_iam_policy_document.allow_read_only_access.json
}

data "aws_iam_policy_document" "allow_read_only_access" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["683633011377"]
    }
    
    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]
  
    resources = [
      aws_s3_bucket.my_bucket.arn,
      "${aws_s3_bucket.my_bucket.arn}/*",
    ]
  }
}