variable "display_name" {
  default     = "SNS Notification"
  type        = "string"
  description = "Name shown in confirmation emails"
}
variable "sns_email_lists" {
  default     = []
  type        = "list"
  description = "Email address to send notifications to"
}
variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
  type        = "string"
}
variable "cf_stack_name" {
  default     = "sns-cf-stack"
  type        = "string"
  description = "Name of the Cloudformation stack"
}
variable "tags" {
  default     = {} 
  type        = "map"
  description = "A map of the tags to apply."
}
