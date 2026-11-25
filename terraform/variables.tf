variable "project_name" {
  description = "Name of the enterprise network project"
  type        = string
  default     = "Acme"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "production"
}

variable "vpc_id" {
  description = "Existing production VPC ID"
  type        = string
  default     = "vpc-03d48c621c72cfdf1"
}
