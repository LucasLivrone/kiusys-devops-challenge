# DynamoDB table
resource "aws_dynamodb_table" "flights_db" {
  name         = "flights-db"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "flight-route"

  attribute {
    name = "flight-route"
    type = "S"
  }

  tags = {
    Name        = "flights-db"
    Description = "Database that contains the records of each flight"
  }
}