resource "aws_cloudwatch_event_rule" "lambda" {
  name        = var.name_crule
  description = "Rule to trigger Lambda function on Interruption warning"

  event_pattern = <<PATTERN
{
  "source": [
    "aws.ec2"
  ],
  "detail-type": [
    "EC2 Spot Instance Interruption Warning"
  ]
}
PATTERN
}

resource "aws_cloudwatch_event_target" "call_lambda" {
  rule      = aws_cloudwatch_event_rule.lambda.name
  target_id = "lambda"
  arn       = var.lambda_function_arn
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_lambda_function" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.lambda.arn
}

