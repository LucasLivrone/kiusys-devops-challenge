variable "aws_region" {
  description = "AWS region where the resources are going the be provisioned."
  type        = string
  default     = "us-east-1"
}

variable "ecr_repo" {
  description = "Name of the ECR Repo that will contain the kiusys app"
  type        = string
  default     = "kiusys-app"
}