resource "aws_dynamodb_table" "cars2" {
  name = "cars"
  hash_key = "VIN"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "VIN"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "car-items" {
  table_name = aws_dynamodb_table.cars.name
  hash_key   = aws_dynamodb_table.cars.hash_key
  item       = jsonencode(
    {
    "Manufacturer": {"S": "Toyota"},
    "Make": {"S": "Corolla"},
    "Year": {"N": "2004"},
    "VIN": {"S": "4Y1SL653FRDS359"},
    }
  )
}
