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
  default = ""
}

variable "DATABASE_USER" {
  default = "postgres"
}

variable "DATABASE_PASSWORD" {
  default = ""
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
  default = ""
}

variable "CLD_CLOUD_NAME" {
  default = "momtribeng"
}

variable "CLD_API_KEY" {
  default = ""
}

variable "CLD_API_SECRET" {
  default = ""
}

variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AWS_ACCESS_KEY_ID" {
  default = "AKIAQNPOOZVCNTX7USUC"
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = ""
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