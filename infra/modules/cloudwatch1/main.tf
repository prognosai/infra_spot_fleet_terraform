resource "aws_cloudwatch_event_rule" "lambda1" {
  name        = "${var.name_cwrule}"
  description = "Rule to trigger Lambda function on state running"

  event_pattern = <<PATTERN
{
  "source": [
    "aws.ec2"
  ],
  "detail-type": [
    "EC2 Instance State-change Notification"
  ],
  "detail": {
    "state": [
      "running"
    ]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "call_lambda1" {
    rule = "${aws_cloudwatch_event_rule.lambda1.name}"
    target_id = "test_lambda1"
    arn = "${var.state_running_function_arn}"
}

resource "aws_lambda_permission" "call_lambda1" {
    statement_id = "AllowExecutionFromCloudWatch"
    action = "lambda:InvokeFunction"
    function_name = "${var.state_running_function_name}"
    principal = "events.amazonaws.com"
    source_arn = "${aws_cloudwatch_event_rule.lambda1.arn}"
}

