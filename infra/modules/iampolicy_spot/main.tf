resource "aws_iam_role_policy" "policy_spot" {
  name = "${var.spot_policy_name}"
  role = "${var.spot_role_name}"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeImages",
                "ec2:DescribeSubnets",
                "ec2:RequestSpotInstances",
                "ec2:TerminateInstances",
                "ec2:DescribeInstanceStatus",
                "ec2:CreateTags"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Condition": {
                "StringEquals": {
                    "iam:PassedToService": [
                        "ec2.amazonaws.com",
                        "ec2.amazonaws.com.cn"
                    ]
                }
            },
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:RegisterInstancesWithLoadBalancer"
            ],
            "Resource": [
                "arn:aws:elasticloadbalancing:*:*:loadbalancer/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:RegisterTargets"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}
