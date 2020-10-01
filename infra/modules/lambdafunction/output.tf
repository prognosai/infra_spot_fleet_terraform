output "lambda_id" {
  value = aws_lambda_function.test_lambda.arn
}
output "func_name" {
  value = aws_lambda_function.test_lambda.function_name
}

