variable "aws_region" {
  description = "AWS region where the resources are going the be provisioned."
  type        = string
  default     = "us-east-1"
}

variable "tf_state_backend_buckets" {
  description = "The name of the S3 bucket where the Terraform state files will be stored"
  type        = list(string)
  default     = ["kiusys-eks-cluster-state-bucket", "kiusys-dynamodb-state-bucket", "kiusys-ecr-repo-state-bucket"]

}

variable "tf_state_locks" {
  description = "DynamoDB table to use for state locking"
  type        = list(string)
  default     = ["kiusys-eks-cluster-state-lock", "kiusys-dynamodb-state-lock", "kiusys-ecr-repo-state-lock"]
}
