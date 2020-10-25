output "sns_topic_arn" {
  description = "The ARN of the SNS topic"
  value       = "${join("", aws_cloudformation_stack.sns_topic.*.outputs.ARN)}"
}
