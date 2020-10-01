resource "aws_lambda_function" "test_lambda" {
  filename      = var.file_name
  function_name = var.function_name
  role          = var.role
  handler       = var.handler
  runtime       = var.runtime
}
