output "api_endpoint" {
  value = aws_apigatewayv2_api.http_api.api_endpoint
}

output "lambda_name" {
  value = aws_lambda_function.banking_api.function_name
}

output "db_endpoint" {
  value = aws_db_instance.postgres.address
}

output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.users.id
}
