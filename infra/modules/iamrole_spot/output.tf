output "spot_role_id" {
  value = aws_iam_role.spot_tagging_role.arn
}

output "spot_role_name" {
  value = aws_iam_role.spot_tagging_role.id
}


