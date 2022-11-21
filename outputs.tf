# Output value definitions

output "API_ENDPOINT" {
  description = "Load balancer URL"
  value = aws_alb.my_load_balancer.dns_name
}

output "MY_APP_PREFIX" {
  value = "${var.app}-${var.environment}"
}

output "AWS_ACCESS_KEY_ID" {
  value = "Get it from AWS IAM"
}

output "AWS_SECRET_ACCESS_KEY" {
  value = "Get it from your AWS IAM"
}

output "AWS_ACCOUNT_ID" {
  value = data.aws_caller_identity.current.account_id
}

output "APP_S3_BUCKET" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "AWS_ECR_ACCOUNT_URL" {
  description = "Docker Image"
  value = aws_ecr_repository.my_repo.repository_url
}

output "AWS_ECR_REGISTRY_ID" {
  value = data.aws_caller_identity.current.account_id
}

output "AWS_REGION" {
  value = var.region
}

output "DATABASE_PASSWORD" {
  value = random_string.db_password.result
}

output "DATABASE_NAME" {
  value = aws_db_instance.app_database_instance.db_name
}

output "DATABASE_HOST" {
  value = aws_db_instance.app_database_instance.domain
}

output "DATABASE_USER" {
  value = aws_db_instance.app_database_instance.username
}

output "DATABASE_ENGINE" {
  value = aws_db_instance.app_database_instance.engine
}

output "DATABASE_ENGINE_VERSION" {
  value = aws_db_instance.app_database_instance.engine_version
}