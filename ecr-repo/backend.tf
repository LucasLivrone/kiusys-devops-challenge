terraform {
  backend "s3" {
    bucket         = "kiusys-ecr-repo-state-bucket"
    key            = "kiusys-ecr-repo.tfstate"
    region         = "us-east-1"
    dynamodb_table = "kiusys-ecr-repo-state-lock"
    encrypt        = true
  }
}