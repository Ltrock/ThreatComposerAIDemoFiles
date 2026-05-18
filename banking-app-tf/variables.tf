variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "banking-demo"
}

variable "db_username" {
  type    = string
  default = "banking_app"
}

variable "db_password" {
  type      = string
  default   = "SuperSecretPassword123!"
  sensitive = true
}
