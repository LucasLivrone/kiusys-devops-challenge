resource "aws_iam_policy" "eks_worker_nodes_dynamodb_policy" {
  name        = "eks-worker-nodes-dynamodb-policy"
  description = "IAM policy for EKS worker nodes to read and write to the flights-db DynamoDB table"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "dynamodb:Query",
          "dynamodb:PutItem"
        ],
        Resource = [
          "arn:aws:dynamodb:${var.aws_region}:*:table/flights-db"
        ],
      },
    ],
  })
}