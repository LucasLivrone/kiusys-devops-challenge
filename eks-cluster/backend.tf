terraform {
  backend "s3" {
    bucket         = "kiusys-eks-cluster-state-bucket"
    key            = "kiusys-eks-cluster.tfstate"
    region         = "us-east-1"
    dynamodb_table = "kiusys-eks-cluster-state-lock"
    encrypt        = true
  }
}