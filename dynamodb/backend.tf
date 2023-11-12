terraform {
  backend "s3" {
    bucket         = "kiusys-dynamodb-state-bucket"
    key            = "kiusys-dynamodb.tfstate"
    region         = "us-east-1"
    dynamodb_table = "kiusys-dynamodb-state-lock"
    encrypt        = true
  }
}