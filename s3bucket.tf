resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.app}-${var.environment}"

  tags = {
    Name = "devops"
  }
}

resource "aws_s3_bucket_acl" "app_bucket_acl" {
  bucket = aws_s3_bucket.app_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.app_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Create the policy to access the S3 bucket
resource "aws_iam_policy" "app_bucket_policy" {
  name        = "${var.app}-${var.environment}-bucket-policy"
  path        = "/"
  description = "CI policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:PutObject",
          "s3:PutObjectAcl",
          "s3:GetObject"
        ],
        Effect = "Allow",
        Resource = [
          "${aws_s3_bucket.app_bucket.arn}/*"
        ]
      },
      {
        Action = [
          "s3:ListBucket"
        ],
        Effect = "Allow",
        Resource = [
          "${aws_s3_bucket.app_bucket.arn}"
        ]
      },
    ]
  })
}

# Attach the policy to our user
resource "aws_iam_policy_attachment" "app_bucket_attachment" {
  name       = "${var.app}-${var.environment}-bucket-attachment"
  users      = [aws_iam_user.cicd.name]
  policy_arn = aws_iam_policy.app_bucket_policy.arn
}