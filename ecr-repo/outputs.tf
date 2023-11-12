output "ecr_repository_url" {
  value = aws_ecr_repository.kiusys_app.repository_url
}

output "region" {
  value = var.aws_region
}