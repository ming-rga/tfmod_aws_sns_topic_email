data "template_file" "cf_sns_stack" {
  count           = "${length(var.sns_email_lists) > 0 ? 1 : 0}"
  template        = "${file("${path.module}/templates/cf_sns_topic.json.tpl")}"
  vars {
    display_name  = "${var.display_name}"
    subscriptions = "${join("," , formatlist("{ \"Endpoint\": \"%s\", \"Protocol\": \"%s\"  }", var.sns_email_lists, var.protocol))}"
  }
}

resource "aws_cloudformation_stack" "sns_topic" {
  count         = "${length(var.sns_email_lists) > 0 ? 1 : 0}"
  name          = "${var.cf_stack_name}"
  template_body = "${data.template_file.cf_sns_stack.rendered}"

  tags          = "${var.tags}"
}
