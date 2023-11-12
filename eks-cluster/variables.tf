variable "aws_region" {
  description = "AWS region where the resources are going the be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Kubernetes Cluster Name"
  type        = string
  default     = "kiusys-eks-cluster"
}

variable "instance_type" {
  type    = string
  default = "t2.micro" # Free Tier: 1 vCPU | 1 GiB Memory
}

variable "vpc_name" {
  description = "Kubernetes Cluster VPC Name"
  type        = string
  default     = "kiusys-eks-cluster-vpc"
}