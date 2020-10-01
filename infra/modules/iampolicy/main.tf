resource "aws_iam_role_policy" "test_policy" {
  name   = var.policy_name
  role   = var.role_name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
