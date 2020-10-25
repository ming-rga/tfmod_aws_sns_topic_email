# Introduction

This module allow the use of email and email-json protocols to SNS Topic Subscription because current `aws_sns_topic_subscription` resource does not provide such option.

# Usage

Use the module in your terraform files:

```
    module "my-sns-email-topic" {
      source = "git::https://github.com/ming-rga/tfmod_aws_sns_topic_email.git"

      display_name  = "CloudWatch Alerts"
      sns_email_lists = ["user1@example.com", "user2@example.com"]
      cf_stack_name    = "unique-sns-stack-name"
    }
```
