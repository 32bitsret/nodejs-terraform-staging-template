# The application's name
variable "app" {
  default = "template-api"
}

# The environment that is being built
variable "environment" {
  default = "staging"
}

variable "region" {
  default = "eu-central-1"
}

variable "organization" {
  default = "Template Organization"
}

variable "logs_retention_in_days" {
  type        = number
  default     = 90
  description = "Specifies the number of days you want to retain log events"
}

variable "ecs_autoscale_min_instances" {
  default = "1"
}

# The maximum number of containers that should be running.
# used by both autoscale-perf.tf and autoscale.time.tf
variable "ecs_autoscale_max_instances" {
  default = "3"
}

# How many containers to run
variable "replicas" {
  default = "1"
}

# Application Env Variables
variable "NODE_ENV" {
  default = "prod"
}

variable "PORT" {
  default = "4700"
}

variable "SOCKET" {
  default = "3005"
}

variable "DATABASE_PORT" {
  default = "5432"
}

variable "DATABASE_HOST" {
  default = "ec2-3-224-184-9.compute-1.amazonaws.com"
}

variable "DATABASE_USER" {
  default = "postgres"
}

variable "DATABASE_PASSWORD" {
  default = "14bcd4e34f0f2ba0c565f8a3fe022ffa758e075ed94b3c01f9a693a7a769bac4"
}

variable "DATABASE_DB" {
  default = "template_db"
}

variable "SECRET" {
  default = "thisIsASecretKey"
}

variable "REFRESHSECRET" {
  default = "thisIsASecretKey2"
}

variable "SENDGRID_API_KEY" { 
  default = "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"
}

variable "CLD_CLOUD_NAME" {
  default = "momtribeng"
}

variable "CLD_API_KEY" {
  default = "266853871981238"
}

variable "CLD_API_SECRET" {
  default = "SJLk5gES3TUCV7wa8_60kvcUxxU"
}

variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AWS_ACCESS_KEY_ID" {
  default = "AKIAQNPOOZVCNTX7USUC"
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = "6qBjcRV/T1gnTO0ycoaIVOn4g+PGWkmuzqMwSLvl"
}

variable "AWS_PUBLIC_BUCKET_NAME" {
  default = "template-storage"
}

# SSL
variable "domain" {
  default = "template-api"
}

variable "acme_registration_email" {
  default = "dretnan@logicaladdress.com"
}

variable "acme_server_url" {
  default = "https://acme-v02.api.letsencrypt.org/directory"
}

variable "domain_r53_host_id" {
  default = "API_ROOM_DOMAIN_ZONE_ID"
}