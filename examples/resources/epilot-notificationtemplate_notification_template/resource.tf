resource "epilot-notificationtemplate_notification_template" "my_notificationtemplate" {
  heading = "My heading"
  message = "My message"
  name    = "Webhook delivery failed"
  tags = [
    "default",
  ]
  title = "Webhook delivery failed"
  type  = "system.webhook_delivery_failed"
}